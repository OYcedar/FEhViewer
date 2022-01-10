import 'package:flutter/foundation.dart';
import 'package:quiver/core.dart';
import 'index.dart';



@immutable
class EhConfig {

  const EhConfig({
    required this.jpnTitle,
    this.tagTranslat,
    this.tagTranslatVer,
    required this.favoritesOrder,
    this.siteEx,
    this.galleryImgBlur,
    this.favPicker,
    this.favLongTap,
    this.lastFavcat,
    this.lastShowFavcat,
    this.lastShowFavTitle,
    required this.listMode,
    this.safeMode,
    required this.catFilter,
    required this.maxHistory,
    this.searchBarComp,
    this.pureDarkTheme,
    required this.viewModel,
    this.clipboardLink,
    this.commentTrans,
    this.autoLockTimeOut,
    this.showPageInterval,
    this.orientation,
    this.vibrate,
    this.tagIntroImgLv,
    this.debugMode,
    this.debugCount,
    this.autoRead,
    this.turnPageInv,
    this.toplist,
    this.tabletLayout,
    this.enableTagTranslateCDN,
    this.autoSelectProfile,
    this.tapToTurnPageAnimations,
    this.selectProfile,
    this.linkRedirect,
    this.fixedHeightOfListItems,
  });

  final bool jpnTitle;
  final bool? tagTranslat;
  final String? tagTranslatVer;
  final String favoritesOrder;
  final bool? siteEx;
  final bool? galleryImgBlur;
  final bool? favPicker;
  final bool? favLongTap;
  final String? lastFavcat;
  final String? lastShowFavcat;
  final String? lastShowFavTitle;
  final String listMode;
  final bool? safeMode;
  final int catFilter;
  final int maxHistory;
  final bool? searchBarComp;
  final bool? pureDarkTheme;
  final String viewModel;
  final bool? clipboardLink;
  final bool? commentTrans;
  final int? autoLockTimeOut;
  final bool? showPageInterval;
  final String? orientation;
  final bool? vibrate;
  final String? tagIntroImgLv;
  final bool? debugMode;
  final int? debugCount;
  final bool? autoRead;
  final int? turnPageInv;
  final String? toplist;
  final bool? tabletLayout;
  final bool? enableTagTranslateCDN;
  final bool? autoSelectProfile;
  final bool? tapToTurnPageAnimations;
  final String? selectProfile;
  final bool? linkRedirect;
  final bool? fixedHeightOfListItems;

  factory EhConfig.fromJson(Map<String,dynamic> json) => EhConfig(
    jpnTitle: json['jpnTitle'] as bool,
    tagTranslat: json['tagTranslat'] != null ? json['tagTranslat'] as bool : null,
    tagTranslatVer: json['tagTranslatVer'] != null ? json['tagTranslatVer'] as String : null,
    favoritesOrder: json['favoritesOrder'] as String,
    siteEx: json['siteEx'] != null ? json['siteEx'] as bool : null,
    galleryImgBlur: json['galleryImgBlur'] != null ? json['galleryImgBlur'] as bool : null,
    favPicker: json['favPicker'] != null ? json['favPicker'] as bool : null,
    favLongTap: json['favLongTap'] != null ? json['favLongTap'] as bool : null,
    lastFavcat: json['lastFavcat'] != null ? json['lastFavcat'] as String : null,
    lastShowFavcat: json['lastShowFavcat'] != null ? json['lastShowFavcat'] as String : null,
    lastShowFavTitle: json['lastShowFavTitle'] != null ? json['lastShowFavTitle'] as String : null,
    listMode: json['listMode'] as String,
    safeMode: json['safeMode'] != null ? json['safeMode'] as bool : null,
    catFilter: json['catFilter'] as int,
    maxHistory: json['maxHistory'] as int,
    searchBarComp: json['searchBarComp'] != null ? json['searchBarComp'] as bool : null,
    pureDarkTheme: json['pureDarkTheme'] != null ? json['pureDarkTheme'] as bool : null,
    viewModel: json['viewModel'] as String,
    clipboardLink: json['clipboardLink'] != null ? json['clipboardLink'] as bool : null,
    commentTrans: json['commentTrans'] != null ? json['commentTrans'] as bool : null,
    autoLockTimeOut: json['autoLockTimeOut'] != null ? json['autoLockTimeOut'] as int : null,
    showPageInterval: json['showPageInterval'] != null ? json['showPageInterval'] as bool : null,
    orientation: json['orientation'] != null ? json['orientation'] as String : null,
    vibrate: json['vibrate'] != null ? json['vibrate'] as bool : null,
    tagIntroImgLv: json['tagIntroImgLv'] != null ? json['tagIntroImgLv'] as String : null,
    debugMode: json['debugMode'] != null ? json['debugMode'] as bool : null,
    debugCount: json['debugCount'] != null ? json['debugCount'] as int : null,
    autoRead: json['autoRead'] != null ? json['autoRead'] as bool : null,
    turnPageInv: json['turnPageInv'] != null ? json['turnPageInv'] as int : null,
    toplist: json['toplist'] != null ? json['toplist'] as String : null,
    tabletLayout: json['tabletLayout'] != null ? json['tabletLayout'] as bool : null,
    enableTagTranslateCDN: json['enableTagTranslateCDN'] != null ? json['enableTagTranslateCDN'] as bool : null,
    autoSelectProfile: json['autoSelectProfile'] != null ? json['autoSelectProfile'] as bool : null,
    tapToTurnPageAnimations: json['tapToTurnPageAnimations'] != null ? json['tapToTurnPageAnimations'] as bool : null,
    selectProfile: json['selectProfile'] != null ? json['selectProfile'] as String : null,
    linkRedirect: json['linkRedirect'] != null ? json['linkRedirect'] as bool : null,
    fixedHeightOfListItems: json['fixedHeightOfListItems'] != null ? json['fixedHeightOfListItems'] as bool : null
  );
  
  Map<String, dynamic> toJson() => {
    'jpnTitle': jpnTitle,
    'tagTranslat': tagTranslat,
    'tagTranslatVer': tagTranslatVer,
    'favoritesOrder': favoritesOrder,
    'siteEx': siteEx,
    'galleryImgBlur': galleryImgBlur,
    'favPicker': favPicker,
    'favLongTap': favLongTap,
    'lastFavcat': lastFavcat,
    'lastShowFavcat': lastShowFavcat,
    'lastShowFavTitle': lastShowFavTitle,
    'listMode': listMode,
    'safeMode': safeMode,
    'catFilter': catFilter,
    'maxHistory': maxHistory,
    'searchBarComp': searchBarComp,
    'pureDarkTheme': pureDarkTheme,
    'viewModel': viewModel,
    'clipboardLink': clipboardLink,
    'commentTrans': commentTrans,
    'autoLockTimeOut': autoLockTimeOut,
    'showPageInterval': showPageInterval,
    'orientation': orientation,
    'vibrate': vibrate,
    'tagIntroImgLv': tagIntroImgLv,
    'debugMode': debugMode,
    'debugCount': debugCount,
    'autoRead': autoRead,
    'turnPageInv': turnPageInv,
    'toplist': toplist,
    'tabletLayout': tabletLayout,
    'enableTagTranslateCDN': enableTagTranslateCDN,
    'autoSelectProfile': autoSelectProfile,
    'tapToTurnPageAnimations': tapToTurnPageAnimations,
    'selectProfile': selectProfile,
    'linkRedirect': linkRedirect,
    'fixedHeightOfListItems': fixedHeightOfListItems
  };

  EhConfig clone() => EhConfig(
    jpnTitle: jpnTitle,
    tagTranslat: tagTranslat,
    tagTranslatVer: tagTranslatVer,
    favoritesOrder: favoritesOrder,
    siteEx: siteEx,
    galleryImgBlur: galleryImgBlur,
    favPicker: favPicker,
    favLongTap: favLongTap,
    lastFavcat: lastFavcat,
    lastShowFavcat: lastShowFavcat,
    lastShowFavTitle: lastShowFavTitle,
    listMode: listMode,
    safeMode: safeMode,
    catFilter: catFilter,
    maxHistory: maxHistory,
    searchBarComp: searchBarComp,
    pureDarkTheme: pureDarkTheme,
    viewModel: viewModel,
    clipboardLink: clipboardLink,
    commentTrans: commentTrans,
    autoLockTimeOut: autoLockTimeOut,
    showPageInterval: showPageInterval,
    orientation: orientation,
    vibrate: vibrate,
    tagIntroImgLv: tagIntroImgLv,
    debugMode: debugMode,
    debugCount: debugCount,
    autoRead: autoRead,
    turnPageInv: turnPageInv,
    toplist: toplist,
    tabletLayout: tabletLayout,
    enableTagTranslateCDN: enableTagTranslateCDN,
    autoSelectProfile: autoSelectProfile,
    tapToTurnPageAnimations: tapToTurnPageAnimations,
    selectProfile: selectProfile,
    linkRedirect: linkRedirect,
    fixedHeightOfListItems: fixedHeightOfListItems
  );


  EhConfig copyWith({
    bool? jpnTitle,
    Optional<bool?>? tagTranslat,
    Optional<String?>? tagTranslatVer,
    String? favoritesOrder,
    Optional<bool?>? siteEx,
    Optional<bool?>? galleryImgBlur,
    Optional<bool?>? favPicker,
    Optional<bool?>? favLongTap,
    Optional<String?>? lastFavcat,
    Optional<String?>? lastShowFavcat,
    Optional<String?>? lastShowFavTitle,
    String? listMode,
    Optional<bool?>? safeMode,
    int? catFilter,
    int? maxHistory,
    Optional<bool?>? searchBarComp,
    Optional<bool?>? pureDarkTheme,
    String? viewModel,
    Optional<bool?>? clipboardLink,
    Optional<bool?>? commentTrans,
    Optional<int?>? autoLockTimeOut,
    Optional<bool?>? showPageInterval,
    Optional<String?>? orientation,
    Optional<bool?>? vibrate,
    Optional<String?>? tagIntroImgLv,
    Optional<bool?>? debugMode,
    Optional<int?>? debugCount,
    Optional<bool?>? autoRead,
    Optional<int?>? turnPageInv,
    Optional<String?>? toplist,
    Optional<bool?>? tabletLayout,
    Optional<bool?>? enableTagTranslateCDN,
    Optional<bool?>? autoSelectProfile,
    Optional<bool?>? tapToTurnPageAnimations,
    Optional<String?>? selectProfile,
    Optional<bool?>? linkRedirect,
    Optional<bool?>? fixedHeightOfListItems
  }) => EhConfig(
    jpnTitle: jpnTitle ?? this.jpnTitle,
    tagTranslat: checkOptional(tagTranslat, this.tagTranslat),
    tagTranslatVer: checkOptional(tagTranslatVer, this.tagTranslatVer),
    favoritesOrder: favoritesOrder ?? this.favoritesOrder,
    siteEx: checkOptional(siteEx, this.siteEx),
    galleryImgBlur: checkOptional(galleryImgBlur, this.galleryImgBlur),
    favPicker: checkOptional(favPicker, this.favPicker),
    favLongTap: checkOptional(favLongTap, this.favLongTap),
    lastFavcat: checkOptional(lastFavcat, this.lastFavcat),
    lastShowFavcat: checkOptional(lastShowFavcat, this.lastShowFavcat),
    lastShowFavTitle: checkOptional(lastShowFavTitle, this.lastShowFavTitle),
    listMode: listMode ?? this.listMode,
    safeMode: checkOptional(safeMode, this.safeMode),
    catFilter: catFilter ?? this.catFilter,
    maxHistory: maxHistory ?? this.maxHistory,
    searchBarComp: checkOptional(searchBarComp, this.searchBarComp),
    pureDarkTheme: checkOptional(pureDarkTheme, this.pureDarkTheme),
    viewModel: viewModel ?? this.viewModel,
    clipboardLink: checkOptional(clipboardLink, this.clipboardLink),
    commentTrans: checkOptional(commentTrans, this.commentTrans),
    autoLockTimeOut: checkOptional(autoLockTimeOut, this.autoLockTimeOut),
    showPageInterval: checkOptional(showPageInterval, this.showPageInterval),
    orientation: checkOptional(orientation, this.orientation),
    vibrate: checkOptional(vibrate, this.vibrate),
    tagIntroImgLv: checkOptional(tagIntroImgLv, this.tagIntroImgLv),
    debugMode: checkOptional(debugMode, this.debugMode),
    debugCount: checkOptional(debugCount, this.debugCount),
    autoRead: checkOptional(autoRead, this.autoRead),
    turnPageInv: checkOptional(turnPageInv, this.turnPageInv),
    toplist: checkOptional(toplist, this.toplist),
    tabletLayout: checkOptional(tabletLayout, this.tabletLayout),
    enableTagTranslateCDN: checkOptional(enableTagTranslateCDN, this.enableTagTranslateCDN),
    autoSelectProfile: checkOptional(autoSelectProfile, this.autoSelectProfile),
    tapToTurnPageAnimations: checkOptional(tapToTurnPageAnimations, this.tapToTurnPageAnimations),
    selectProfile: checkOptional(selectProfile, this.selectProfile),
    linkRedirect: checkOptional(linkRedirect, this.linkRedirect),
    fixedHeightOfListItems: checkOptional(fixedHeightOfListItems, this.fixedHeightOfListItems),
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is EhConfig && jpnTitle == other.jpnTitle && tagTranslat == other.tagTranslat && tagTranslatVer == other.tagTranslatVer && favoritesOrder == other.favoritesOrder && siteEx == other.siteEx && galleryImgBlur == other.galleryImgBlur && favPicker == other.favPicker && favLongTap == other.favLongTap && lastFavcat == other.lastFavcat && lastShowFavcat == other.lastShowFavcat && lastShowFavTitle == other.lastShowFavTitle && listMode == other.listMode && safeMode == other.safeMode && catFilter == other.catFilter && maxHistory == other.maxHistory && searchBarComp == other.searchBarComp && pureDarkTheme == other.pureDarkTheme && viewModel == other.viewModel && clipboardLink == other.clipboardLink && commentTrans == other.commentTrans && autoLockTimeOut == other.autoLockTimeOut && showPageInterval == other.showPageInterval && orientation == other.orientation && vibrate == other.vibrate && tagIntroImgLv == other.tagIntroImgLv && debugMode == other.debugMode && debugCount == other.debugCount && autoRead == other.autoRead && turnPageInv == other.turnPageInv && toplist == other.toplist && tabletLayout == other.tabletLayout && enableTagTranslateCDN == other.enableTagTranslateCDN && autoSelectProfile == other.autoSelectProfile && tapToTurnPageAnimations == other.tapToTurnPageAnimations && selectProfile == other.selectProfile && linkRedirect == other.linkRedirect && fixedHeightOfListItems == other.fixedHeightOfListItems;

  @override
  int get hashCode => jpnTitle.hashCode ^ tagTranslat.hashCode ^ tagTranslatVer.hashCode ^ favoritesOrder.hashCode ^ siteEx.hashCode ^ galleryImgBlur.hashCode ^ favPicker.hashCode ^ favLongTap.hashCode ^ lastFavcat.hashCode ^ lastShowFavcat.hashCode ^ lastShowFavTitle.hashCode ^ listMode.hashCode ^ safeMode.hashCode ^ catFilter.hashCode ^ maxHistory.hashCode ^ searchBarComp.hashCode ^ pureDarkTheme.hashCode ^ viewModel.hashCode ^ clipboardLink.hashCode ^ commentTrans.hashCode ^ autoLockTimeOut.hashCode ^ showPageInterval.hashCode ^ orientation.hashCode ^ vibrate.hashCode ^ tagIntroImgLv.hashCode ^ debugMode.hashCode ^ debugCount.hashCode ^ autoRead.hashCode ^ turnPageInv.hashCode ^ toplist.hashCode ^ tabletLayout.hashCode ^ enableTagTranslateCDN.hashCode ^ autoSelectProfile.hashCode ^ tapToTurnPageAnimations.hashCode ^ selectProfile.hashCode ^ linkRedirect.hashCode ^ fixedHeightOfListItems.hashCode;
}
