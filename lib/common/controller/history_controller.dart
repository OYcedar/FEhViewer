import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:executor/executor.dart';
import 'package:fehviewer/common/controller/webdav_controller.dart';
import 'package:fehviewer/common/global.dart';
import 'package:fehviewer/common/service/ehconfig_service.dart';
import 'package:fehviewer/models/index.dart';
import 'package:fehviewer/store/get_store.dart';
import 'package:fehviewer/utils/logger.dart';
import 'package:get/get.dart';
import 'package:throttling/throttling.dart';

class HistoryController extends GetxController {
  final List<GalleryItem> _historys = <GalleryItem>[];
  List<GalleryItem> get historys {
    _historys
        .sort((a, b) => (b.lastViewTime ?? 0).compareTo(a.lastViewTime ?? 0));
    return _historys;
  }

  final EhConfigService _ehConfigService = Get.find();
  final WebdavController webdavController = Get.find();
  final GStore _gStore = Get.find<GStore>();

  final thrSync = Throttling(duration: const Duration(seconds: 60));
  final debSync = Debouncing(duration: const Duration(seconds: 80));

  final executor = Executor(concurrency: 3);

  void addHistory(
    GalleryItem galleryItem, {
    bool updateTime = true,
    bool sync = true,
  }) {
    final int nowTime = DateTime.now().millisecondsSinceEpoch;
    final _item = galleryItem.copyWith(
      lastViewTime: updateTime ? nowTime : null,
      galleryImages: [],
      galleryComment: [],
    );

    final int _index = historys.indexWhere((GalleryItem element) {
      return element.gid == _item.gid;
    });
    if (_index >= 0) {
      historys.removeAt(_index);
      historys.insert(0, _item);
      hiveHelper.addHistory(_item);
    } else {
      // 检查数量限制 超限则删除最后一条
      if (_ehConfigService.maxHistory.value > 0 &&
          historys.length == _ehConfigService.maxHistory.value) {
        hiveHelper.removeHistory(historys.last.gid ?? '');
        historys.removeLast();
      }

      historys.insert(0, _item);
      hiveHelper.addHistory(_item);
    }
    update();

    if (sync) {
      // 节流函数 最多每分钟一次同步
      thrSync.throttle(() {
        logger.d('throttle syncHistory');
        return syncHistory();
      });

      debSync.debounce(syncHistory);
    }
  }

  void removeHistory(String gid, {bool sync = true}) {
    historys.removeWhere((element) => element.gid == gid);
    update();
    hiveHelper.removeHistory(gid);
    if (sync) {
      // 节流函数 最多每分钟一次同步
      thrSync.throttle(() {
        logger.d('throttle syncHistory');
        return syncHistory();
      });

      debSync.debounce(syncHistory);
    }
  }

  void cleanHistory() {
    historys.clear();
    update();
    hiveHelper.cleanHistory();
    // _gStore.historys = historys;
  }

  @override
  void onInit() {
    super.onInit();

    _historys.addAll(hiveHelper.getAllHistory());
  }

  Future<void> syncHistory() async {
    if (!webdavController.syncHistory) {
      return;
    }
    //
    final List<HistoryIndexGid?> listLocalIndex = historys
        .map((e) => HistoryIndexGid(t: e.lastViewTime, g: e.gid))
        .toList();
    logger.d('listLocalIndex ${listLocalIndex.length} \n$listLocalIndex');
    logger.d('${jsonEncode(listLocalIndex)}');

    // 下载远程列表
    final remoteIndex = await webdavController.downloadHistoryList();
    if (remoteIndex == null) {
      await _uploadHistorys2(listLocalIndex.toList());
      await _uploadHistory(listLocalIndex);
      return;
    }

    final listRemoteIndex = remoteIndex.gids ?? [];
    // 比较远程和本地的差异
    final allGid = [...listRemoteIndex, ...listLocalIndex];
    final diff = allGid
        .where((element) =>
            !listRemoteIndex.contains(element) ||
            !listLocalIndex.contains(element))
        .toList()
        .toSet();
    logger.d('diff ${diff.map((e) => e?.toJson())}');

    // 本地时间更大的画廊
    final localNewer = listLocalIndex.where((eLocal) {
      if (eLocal == null) {
        return false;
      }
      final _eRemote =
          listRemoteIndex.firstWhereOrNull((eRemote) => eRemote.g == eLocal.g);
      if (_eRemote == null) {
        return true;
      }

      return (eLocal.t ?? 0) > (_eRemote.t ?? 0);
    });
    logger.d('localNewer ${localNewer.map((e) => e?.g)}');

    // 远程时间更大的画廊
    final remoteNewer = listRemoteIndex.where((eRemote) {
      final _eLocal = listLocalIndex
          .firstWhereOrNull((eLocal) => (eLocal?.g ?? '') == eRemote.g);
      if (_eLocal == null) {
        return true;
      }

      return (eRemote.t ?? 0) > (_eLocal.t ?? 0);
    });
    logger.d('remoteNewer ${remoteNewer.map((e) => e.g)}');

    await _downloadHistorys2(remoteNewer.toList());

    // 远程实际列表
    final List<String> realRemoteList =
        (await webdavController.getRemotFileList())
            .map((e) => e.substring(0, e.lastIndexOf('.')))
            .toList();

    // 上传远程需要的的
    final remoteNeeds = allGid
        .where((element) => !realRemoteList.contains(element?.g))
        .toSet()
          ..addAll(localNewer);
    logger.d('remoteNeeds ${remoteNeeds.map((e) => e?.g).toList()}');

    await _uploadHistorys2(remoteNeeds.toList());

    // 更新远程index文件
    if (remoteNeeds.isNotEmpty || remoteNewer.isNotEmpty) {
      await _uploadHistory(historys
          .map((e) => HistoryIndexGid(t: e.lastViewTime, g: e.gid))
          .toList());
    }
  }

  Future _downloadHistorys(List<HistoryIndexGid> hisList) async {
    for (final gid in hisList) {
      if (gid.g != null) {
        final image = await webdavController.downloadHistory(gid.g!);
        if (image == null) {
          continue;
        }
        addHistory(image, updateTime: false, sync: false);
      }
    }
  }

  Future _downloadHistorys2(List<HistoryIndexGid> hisList) async {
    for (final gid in hisList) {
      executor.scheduleTask(() async {
        if (gid.g != null) {
          // logger.d('download ${gid.g}');
          final image = await webdavController.downloadHistory(gid.g!);
          if (image != null) {
            addHistory(image, updateTime: false, sync: false);
          }
        }
      });
    }

    await executor.join(withWaiting: true);
  }

  Future _uploadHistorys(List<HistoryIndexGid?> hisList) async {
    for (final gid in hisList) {
      final GalleryItem? _his =
          historys.firstWhereOrNull((element) => element.gid == gid?.g);
      if (_his != null) {
        await webdavController.uploadHistory(_his);
      }
    }
  }

  Future _uploadHistorys2(List<HistoryIndexGid?> hisList) async {
    for (final gid in hisList) {
      executor.scheduleTask(() async {
        final GalleryItem? _his =
            historys.firstWhereOrNull((element) => element.gid == gid?.g);
        if (_his != null) {
          await webdavController.uploadHistory(_his);
        }
      });
    }
    await executor.join(withWaiting: true);
  }

  Future<void> _uploadHistory(List<HistoryIndexGid?> gids) async {
    final _time = DateTime.now().millisecondsSinceEpoch;
    await webdavController.uploadHistoryList(
        gids.where((element) => element != null).toList(), _time);
  }
}
