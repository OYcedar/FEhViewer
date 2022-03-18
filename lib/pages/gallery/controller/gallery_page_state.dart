import 'package:fehviewer/common/controller/download_controller.dart';
import 'package:fehviewer/common/isolate_download/download_manager.dart';
import 'package:fehviewer/common/service/ehconfig_service.dart';
import 'package:get/get.dart';

import '../../../fehviewer.dart';
import '../../item/controller/galleryitem_controller.dart';
import '../view/gallery_page.dart';

class GalleryPageState {
  GalleryPageState() {}

  final EhConfigService _ehConfigService = Get.find();
  DownloadController get _downloadController => Get.find();

  late final GalleryRepository? galleryRepository;

  /// 画廊数据对象
  GalleryItem? galleryItem;

  /// 画廊gid 唯一
  String get gid => galleryItem?.gid ?? '0';

  bool isRefresh = false;

  final RxBool _fromUrl = false.obs;
  bool get fromUrl => _fromUrl.value;
  set fromUrl(bool val) => _fromUrl.value = val;

  final RxBool _isRatinged = false.obs;
  bool get isRatinged => _isRatinged.value;
  set isRatinged(bool val) => _isRatinged.value = val;

  final RxInt _lastIndex = 0.obs;
  int get lastIndex => _lastIndex.value;
  set lastIndex(int val) => _lastIndex.value = val;

  List<GalleryImage> get images => galleryItem?.galleryImages ?? [];
  Map<int, GalleryImage> get imageMap => galleryItem?.imageMap ?? {};
  set imageMap(Map<int, GalleryImage> val) {}
  int get filecount => int.parse(galleryItem?.filecount ?? '0');

  // 阅读按钮开关
  final RxBool _enableRead = false.obs;
  bool get enableRead => _enableRead.value;
  set enableRead(bool val) => _enableRead.value = val;

  bool get hasMoreImage {
    return int.parse(galleryItem?.filecount ?? '0') > (firstPageImage.length);
  }

  // 控制隐藏导航栏按钮和封面
  final RxBool _hideNavigationBtn = true.obs;

  bool get hideNavigationBtn => _hideNavigationBtn.value;
  set hideNavigationBtn(bool val) => _hideNavigationBtn.value = val;

  // 第一页的缩略图对象数组
  List<GalleryImage>? _firstPageImage;
  List<GalleryImage> get firstPageImage => _firstPageImage ?? [];
  set firstPageImage(List<GalleryImage>? val) => _firstPageImage = val;

  String get showKey => galleryItem?.showKey ?? '';

  /// 当前缩略图页码
  late int currentImagePage;

  // 正在获取href
  bool isImageInfoGeting = false;

  /// 是否存在本地收藏中
  set localFav(bool value) {
    galleryItem = galleryItem?.copyWith(localFav: value);
  }

  bool get localFav => galleryItem?.localFav ?? false;

  final _topTitle = ''.obs;
  // get topTitle => _topTitle.value;
  set topTitle(String val) => _topTitle.value = val;

  List<GalleryImage> get imagesFromMap {
    List<MapEntry<int, GalleryImage>> list = imageMap.entries
        .map((MapEntry<int, GalleryImage> e) => MapEntry(e.key, e.value))
        .toList();
    list.sort((a, b) => a.key.compareTo(b.key));

    return list.map((e) => e.value).toList();
  }

  final Map<int, Future<List<GalleryImage>>> mapLoadImagesForSer = {};

  // 另一个语言的标题
  String get topTitle {
    // logger.d('${galleryItem.japaneseTitle} ${galleryItem.englishTitle}');

    if ((_ehConfigService.isJpnTitle.value) &&
        (galleryItem?.japaneseTitle?.isNotEmpty ?? false)) {
      return galleryItem?.englishTitle ?? '';
    } else {
      return galleryItem?.japaneseTitle ?? '';
    }
  }

  // 根据设置的语言显示的标题
  String get title {
    if ((_ehConfigService.isJpnTitle.value) &&
        (galleryItem?.japaneseTitle?.isNotEmpty ?? false)) {
      return galleryItem?.japaneseTitle ?? '';
    } else {
      return galleryItem?.englishTitle ?? '';
    }
  }

  GalleryItemController? get itemController {
    try {
      return Get.find(tag: gid);
    } catch (_) {
      return null;
    }
  }

  TaskStatus get downloadState => TaskStatus(
      _downloadController.dState.galleryTaskMap[int.parse(gid)]?.status ?? 0);
}
