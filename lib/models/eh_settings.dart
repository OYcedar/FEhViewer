import 'package:flutter/foundation.dart';
import 'package:quiver/core.dart';
import 'index.dart';

import 'eh_profile.dart';
import 'eh_setting_item.dart';
import 'eh_setting_item.dart';
import 'eh_setting_item.dart';

@immutable
class EhSettings {

  const EhSettings({
    required this.profilelist,
    this.profileSelected,
    this.defaultProfile,
    this.loadImageThroughHAtH,
    this.loadBrowsingCountry,
    this.imageSize,
    this.imageSizeHorizontal,
    this.imageSizeVertical,
    this.galleryNameDisplay,
    this.archiverSettings,
    this.frontPageSettings,
    this.ctDoujinshi,
    this.ctManga,
    this.ctArtistcg,
    this.ctGamecg,
    this.ctWestern,
    this.ctNonH,
    this.ctImageset,
    this.ctCosplay,
    this.ctAsianporn,
    this.ctMisc,
    required this.favorites,
    this.sortOrderFavorites,
    this.ratings,
    required this.xn,
    required this.xl,
    this.tagFilteringThreshold,
    this.tagWatchingThreshold,
    this.excludedUploaders,
    this.xuQuotaUsing,
    this.xuQuotaMax,
    this.searchResultCount,
    this.mouseOverThumbnails,
    this.thumbnailSize,
    this.thumbnailRows,
    this.thumbnailScaling,
    this.viewportOverride,
    this.sortOrderComments,
    this.showCommentVotes,
    this.sortOrderTags,
    this.showGalleryPageNumbers,
    this.hentaiAtHomeLocalNetworkHost,
    this.originalImages,
    this.alwaysUseMpv,
    this.mpvStyle,
    this.mpvThumbnailPane,
  });

  final List<EhProfile> profilelist;
  final String? profileSelected;
  final String? defaultProfile;
  final String? loadImageThroughHAtH;
  final String? loadBrowsingCountry;
  final String? imageSize;
  final String? imageSizeHorizontal;
  final String? imageSizeVertical;
  final String? galleryNameDisplay;
  final String? archiverSettings;
  final String? frontPageSettings;
  final String? ctDoujinshi;
  final String? ctManga;
  final String? ctArtistcg;
  final String? ctGamecg;
  final String? ctWestern;
  final String? ctNonH;
  final String? ctImageset;
  final String? ctCosplay;
  final String? ctAsianporn;
  final String? ctMisc;
  final List<EhSettingItem> favorites;
  final String? sortOrderFavorites;
  final String? ratings;
  final List<EhSettingItem> xn;
  final List<EhSettingItem> xl;
  final String? tagFilteringThreshold;
  final String? tagWatchingThreshold;
  final String? excludedUploaders;
  final int? xuQuotaUsing;
  final int? xuQuotaMax;
  final String? searchResultCount;
  final String? mouseOverThumbnails;
  final String? thumbnailSize;
  final String? thumbnailRows;
  final String? thumbnailScaling;
  final String? viewportOverride;
  final String? sortOrderComments;
  final String? showCommentVotes;
  final String? sortOrderTags;
  final String? showGalleryPageNumbers;
  final String? hentaiAtHomeLocalNetworkHost;
  final String? originalImages;
  final String? alwaysUseMpv;
  final String? mpvStyle;
  final String? mpvThumbnailPane;

  factory EhSettings.fromJson(Map<String,dynamic> json) => EhSettings(
    profilelist: (json['profilelist'] as List? ?? []).map((e) => EhProfile.fromJson(e as Map<String, dynamic>)).toList(),
    profileSelected: json['profile_selected'] != null ? json['profile_selected'] as String : null,
    defaultProfile: json['default_profile'] != null ? json['default_profile'] as String : null,
    loadImageThroughHAtH: json['load_image_through_hAtH'] != null ? json['load_image_through_hAtH'] as String : null,
    loadBrowsingCountry: json['load_browsing_country'] != null ? json['load_browsing_country'] as String : null,
    imageSize: json['image_size'] != null ? json['image_size'] as String : null,
    imageSizeHorizontal: json['image_size_horizontal'] != null ? json['image_size_horizontal'] as String : null,
    imageSizeVertical: json['image_size_vertical'] != null ? json['image_size_vertical'] as String : null,
    galleryNameDisplay: json['gallery_name_display'] != null ? json['gallery_name_display'] as String : null,
    archiverSettings: json['archiver_settings'] != null ? json['archiver_settings'] as String : null,
    frontPageSettings: json['front_page_settings'] != null ? json['front_page_settings'] as String : null,
    ctDoujinshi: json['ct_doujinshi'] != null ? json['ct_doujinshi'] as String : null,
    ctManga: json['ct_manga'] != null ? json['ct_manga'] as String : null,
    ctArtistcg: json['ct_artistcg'] != null ? json['ct_artistcg'] as String : null,
    ctGamecg: json['ct_gamecg'] != null ? json['ct_gamecg'] as String : null,
    ctWestern: json['ct_western'] != null ? json['ct_western'] as String : null,
    ctNonH: json['ct_non_h'] != null ? json['ct_non_h'] as String : null,
    ctImageset: json['ct_imageset'] != null ? json['ct_imageset'] as String : null,
    ctCosplay: json['ct_cosplay'] != null ? json['ct_cosplay'] as String : null,
    ctAsianporn: json['ct_asianporn'] != null ? json['ct_asianporn'] as String : null,
    ctMisc: json['ct_misc'] != null ? json['ct_misc'] as String : null,
    favorites: (json['favorites'] as List? ?? []).map((e) => EhSettingItem.fromJson(e as Map<String, dynamic>)).toList(),
    sortOrderFavorites: json['sort_order_favorites'] != null ? json['sort_order_favorites'] as String : null,
    ratings: json['ratings'] != null ? json['ratings'] as String : null,
    xn: (json['xn'] as List? ?? []).map((e) => EhSettingItem.fromJson(e as Map<String, dynamic>)).toList(),
    xl: (json['xl'] as List? ?? []).map((e) => EhSettingItem.fromJson(e as Map<String, dynamic>)).toList(),
    tagFilteringThreshold: json['tag_filtering_threshold'] != null ? json['tag_filtering_threshold'] as String : null,
    tagWatchingThreshold: json['tag_watching_threshold'] != null ? json['tag_watching_threshold'] as String : null,
    excludedUploaders: json['excluded_uploaders'] != null ? json['excluded_uploaders'] as String : null,
    xuQuotaUsing: json['xu_quota_using'] != null ? json['xu_quota_using'] as int : null,
    xuQuotaMax: json['xu_quota_max'] != null ? json['xu_quota_max'] as int : null,
    searchResultCount: json['search_result_count'] != null ? json['search_result_count'] as String : null,
    mouseOverThumbnails: json['mouse_over_thumbnails'] != null ? json['mouse_over_thumbnails'] as String : null,
    thumbnailSize: json['thumbnail_size'] != null ? json['thumbnail_size'] as String : null,
    thumbnailRows: json['thumbnail_rows'] != null ? json['thumbnail_rows'] as String : null,
    thumbnailScaling: json['thumbnail_Scaling'] != null ? json['thumbnail_Scaling'] as String : null,
    viewportOverride: json['viewport_override'] != null ? json['viewport_override'] as String : null,
    sortOrderComments: json['sort_order_comments'] != null ? json['sort_order_comments'] as String : null,
    showCommentVotes: json['show_comment_votes'] != null ? json['show_comment_votes'] as String : null,
    sortOrderTags: json['sort_order_tags'] != null ? json['sort_order_tags'] as String : null,
    showGalleryPageNumbers: json['show_gallery_page_numbers'] != null ? json['show_gallery_page_numbers'] as String : null,
    hentaiAtHomeLocalNetworkHost: json['hentaiAtHome_local_network_host'] != null ? json['hentaiAtHome_local_network_host'] as String : null,
    originalImages: json['original_images'] != null ? json['original_images'] as String : null,
    alwaysUseMpv: json['always_use_mpv'] != null ? json['always_use_mpv'] as String : null,
    mpvStyle: json['mpv_style'] != null ? json['mpv_style'] as String : null,
    mpvThumbnailPane: json['mpv_thumbnail_pane'] != null ? json['mpv_thumbnail_pane'] as String : null
  );
  
  Map<String, dynamic> toJson() => {
    'profilelist': profilelist.map((e) => e.toJson()).toList(),
    'profile_selected': profileSelected,
    'default_profile': defaultProfile,
    'load_image_through_hAtH': loadImageThroughHAtH,
    'load_browsing_country': loadBrowsingCountry,
    'image_size': imageSize,
    'image_size_horizontal': imageSizeHorizontal,
    'image_size_vertical': imageSizeVertical,
    'gallery_name_display': galleryNameDisplay,
    'archiver_settings': archiverSettings,
    'front_page_settings': frontPageSettings,
    'ct_doujinshi': ctDoujinshi,
    'ct_manga': ctManga,
    'ct_artistcg': ctArtistcg,
    'ct_gamecg': ctGamecg,
    'ct_western': ctWestern,
    'ct_non_h': ctNonH,
    'ct_imageset': ctImageset,
    'ct_cosplay': ctCosplay,
    'ct_asianporn': ctAsianporn,
    'ct_misc': ctMisc,
    'favorites': favorites.map((e) => e.toJson()).toList(),
    'sort_order_favorites': sortOrderFavorites,
    'ratings': ratings,
    'xn': xn.map((e) => e.toJson()).toList(),
    'xl': xl.map((e) => e.toJson()).toList(),
    'tag_filtering_threshold': tagFilteringThreshold,
    'tag_watching_threshold': tagWatchingThreshold,
    'excluded_uploaders': excludedUploaders,
    'xu_quota_using': xuQuotaUsing,
    'xu_quota_max': xuQuotaMax,
    'search_result_count': searchResultCount,
    'mouse_over_thumbnails': mouseOverThumbnails,
    'thumbnail_size': thumbnailSize,
    'thumbnail_rows': thumbnailRows,
    'thumbnail_Scaling': thumbnailScaling,
    'viewport_override': viewportOverride,
    'sort_order_comments': sortOrderComments,
    'show_comment_votes': showCommentVotes,
    'sort_order_tags': sortOrderTags,
    'show_gallery_page_numbers': showGalleryPageNumbers,
    'hentaiAtHome_local_network_host': hentaiAtHomeLocalNetworkHost,
    'original_images': originalImages,
    'always_use_mpv': alwaysUseMpv,
    'mpv_style': mpvStyle,
    'mpv_thumbnail_pane': mpvThumbnailPane
  };

  EhSettings clone() => EhSettings(
    profilelist: profilelist.map((e) => e.clone()).toList(),
    profileSelected: profileSelected,
    defaultProfile: defaultProfile,
    loadImageThroughHAtH: loadImageThroughHAtH,
    loadBrowsingCountry: loadBrowsingCountry,
    imageSize: imageSize,
    imageSizeHorizontal: imageSizeHorizontal,
    imageSizeVertical: imageSizeVertical,
    galleryNameDisplay: galleryNameDisplay,
    archiverSettings: archiverSettings,
    frontPageSettings: frontPageSettings,
    ctDoujinshi: ctDoujinshi,
    ctManga: ctManga,
    ctArtistcg: ctArtistcg,
    ctGamecg: ctGamecg,
    ctWestern: ctWestern,
    ctNonH: ctNonH,
    ctImageset: ctImageset,
    ctCosplay: ctCosplay,
    ctAsianporn: ctAsianporn,
    ctMisc: ctMisc,
    favorites: favorites.map((e) => e.clone()).toList(),
    sortOrderFavorites: sortOrderFavorites,
    ratings: ratings,
    xn: xn.map((e) => e.clone()).toList(),
    xl: xl.map((e) => e.clone()).toList(),
    tagFilteringThreshold: tagFilteringThreshold,
    tagWatchingThreshold: tagWatchingThreshold,
    excludedUploaders: excludedUploaders,
    xuQuotaUsing: xuQuotaUsing,
    xuQuotaMax: xuQuotaMax,
    searchResultCount: searchResultCount,
    mouseOverThumbnails: mouseOverThumbnails,
    thumbnailSize: thumbnailSize,
    thumbnailRows: thumbnailRows,
    thumbnailScaling: thumbnailScaling,
    viewportOverride: viewportOverride,
    sortOrderComments: sortOrderComments,
    showCommentVotes: showCommentVotes,
    sortOrderTags: sortOrderTags,
    showGalleryPageNumbers: showGalleryPageNumbers,
    hentaiAtHomeLocalNetworkHost: hentaiAtHomeLocalNetworkHost,
    originalImages: originalImages,
    alwaysUseMpv: alwaysUseMpv,
    mpvStyle: mpvStyle,
    mpvThumbnailPane: mpvThumbnailPane
  );


  EhSettings copyWith({
    List<EhProfile>? profilelist,
    Optional<String?>? profileSelected,
    Optional<String?>? defaultProfile,
    Optional<String?>? loadImageThroughHAtH,
    Optional<String?>? loadBrowsingCountry,
    Optional<String?>? imageSize,
    Optional<String?>? imageSizeHorizontal,
    Optional<String?>? imageSizeVertical,
    Optional<String?>? galleryNameDisplay,
    Optional<String?>? archiverSettings,
    Optional<String?>? frontPageSettings,
    Optional<String?>? ctDoujinshi,
    Optional<String?>? ctManga,
    Optional<String?>? ctArtistcg,
    Optional<String?>? ctGamecg,
    Optional<String?>? ctWestern,
    Optional<String?>? ctNonH,
    Optional<String?>? ctImageset,
    Optional<String?>? ctCosplay,
    Optional<String?>? ctAsianporn,
    Optional<String?>? ctMisc,
    List<EhSettingItem>? favorites,
    Optional<String?>? sortOrderFavorites,
    Optional<String?>? ratings,
    List<EhSettingItem>? xn,
    List<EhSettingItem>? xl,
    Optional<String?>? tagFilteringThreshold,
    Optional<String?>? tagWatchingThreshold,
    Optional<String?>? excludedUploaders,
    Optional<int?>? xuQuotaUsing,
    Optional<int?>? xuQuotaMax,
    Optional<String?>? searchResultCount,
    Optional<String?>? mouseOverThumbnails,
    Optional<String?>? thumbnailSize,
    Optional<String?>? thumbnailRows,
    Optional<String?>? thumbnailScaling,
    Optional<String?>? viewportOverride,
    Optional<String?>? sortOrderComments,
    Optional<String?>? showCommentVotes,
    Optional<String?>? sortOrderTags,
    Optional<String?>? showGalleryPageNumbers,
    Optional<String?>? hentaiAtHomeLocalNetworkHost,
    Optional<String?>? originalImages,
    Optional<String?>? alwaysUseMpv,
    Optional<String?>? mpvStyle,
    Optional<String?>? mpvThumbnailPane
  }) => EhSettings(
    profilelist: profilelist ?? this.profilelist,
    profileSelected: checkOptional(profileSelected, this.profileSelected),
    defaultProfile: checkOptional(defaultProfile, this.defaultProfile),
    loadImageThroughHAtH: checkOptional(loadImageThroughHAtH, this.loadImageThroughHAtH),
    loadBrowsingCountry: checkOptional(loadBrowsingCountry, this.loadBrowsingCountry),
    imageSize: checkOptional(imageSize, this.imageSize),
    imageSizeHorizontal: checkOptional(imageSizeHorizontal, this.imageSizeHorizontal),
    imageSizeVertical: checkOptional(imageSizeVertical, this.imageSizeVertical),
    galleryNameDisplay: checkOptional(galleryNameDisplay, this.galleryNameDisplay),
    archiverSettings: checkOptional(archiverSettings, this.archiverSettings),
    frontPageSettings: checkOptional(frontPageSettings, this.frontPageSettings),
    ctDoujinshi: checkOptional(ctDoujinshi, this.ctDoujinshi),
    ctManga: checkOptional(ctManga, this.ctManga),
    ctArtistcg: checkOptional(ctArtistcg, this.ctArtistcg),
    ctGamecg: checkOptional(ctGamecg, this.ctGamecg),
    ctWestern: checkOptional(ctWestern, this.ctWestern),
    ctNonH: checkOptional(ctNonH, this.ctNonH),
    ctImageset: checkOptional(ctImageset, this.ctImageset),
    ctCosplay: checkOptional(ctCosplay, this.ctCosplay),
    ctAsianporn: checkOptional(ctAsianporn, this.ctAsianporn),
    ctMisc: checkOptional(ctMisc, this.ctMisc),
    favorites: favorites ?? this.favorites,
    sortOrderFavorites: checkOptional(sortOrderFavorites, this.sortOrderFavorites),
    ratings: checkOptional(ratings, this.ratings),
    xn: xn ?? this.xn,
    xl: xl ?? this.xl,
    tagFilteringThreshold: checkOptional(tagFilteringThreshold, this.tagFilteringThreshold),
    tagWatchingThreshold: checkOptional(tagWatchingThreshold, this.tagWatchingThreshold),
    excludedUploaders: checkOptional(excludedUploaders, this.excludedUploaders),
    xuQuotaUsing: checkOptional(xuQuotaUsing, this.xuQuotaUsing),
    xuQuotaMax: checkOptional(xuQuotaMax, this.xuQuotaMax),
    searchResultCount: checkOptional(searchResultCount, this.searchResultCount),
    mouseOverThumbnails: checkOptional(mouseOverThumbnails, this.mouseOverThumbnails),
    thumbnailSize: checkOptional(thumbnailSize, this.thumbnailSize),
    thumbnailRows: checkOptional(thumbnailRows, this.thumbnailRows),
    thumbnailScaling: checkOptional(thumbnailScaling, this.thumbnailScaling),
    viewportOverride: checkOptional(viewportOverride, this.viewportOverride),
    sortOrderComments: checkOptional(sortOrderComments, this.sortOrderComments),
    showCommentVotes: checkOptional(showCommentVotes, this.showCommentVotes),
    sortOrderTags: checkOptional(sortOrderTags, this.sortOrderTags),
    showGalleryPageNumbers: checkOptional(showGalleryPageNumbers, this.showGalleryPageNumbers),
    hentaiAtHomeLocalNetworkHost: checkOptional(hentaiAtHomeLocalNetworkHost, this.hentaiAtHomeLocalNetworkHost),
    originalImages: checkOptional(originalImages, this.originalImages),
    alwaysUseMpv: checkOptional(alwaysUseMpv, this.alwaysUseMpv),
    mpvStyle: checkOptional(mpvStyle, this.mpvStyle),
    mpvThumbnailPane: checkOptional(mpvThumbnailPane, this.mpvThumbnailPane),
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is EhSettings && profilelist == other.profilelist && profileSelected == other.profileSelected && defaultProfile == other.defaultProfile && loadImageThroughHAtH == other.loadImageThroughHAtH && loadBrowsingCountry == other.loadBrowsingCountry && imageSize == other.imageSize && imageSizeHorizontal == other.imageSizeHorizontal && imageSizeVertical == other.imageSizeVertical && galleryNameDisplay == other.galleryNameDisplay && archiverSettings == other.archiverSettings && frontPageSettings == other.frontPageSettings && ctDoujinshi == other.ctDoujinshi && ctManga == other.ctManga && ctArtistcg == other.ctArtistcg && ctGamecg == other.ctGamecg && ctWestern == other.ctWestern && ctNonH == other.ctNonH && ctImageset == other.ctImageset && ctCosplay == other.ctCosplay && ctAsianporn == other.ctAsianporn && ctMisc == other.ctMisc && favorites == other.favorites && sortOrderFavorites == other.sortOrderFavorites && ratings == other.ratings && xn == other.xn && xl == other.xl && tagFilteringThreshold == other.tagFilteringThreshold && tagWatchingThreshold == other.tagWatchingThreshold && excludedUploaders == other.excludedUploaders && xuQuotaUsing == other.xuQuotaUsing && xuQuotaMax == other.xuQuotaMax && searchResultCount == other.searchResultCount && mouseOverThumbnails == other.mouseOverThumbnails && thumbnailSize == other.thumbnailSize && thumbnailRows == other.thumbnailRows && thumbnailScaling == other.thumbnailScaling && viewportOverride == other.viewportOverride && sortOrderComments == other.sortOrderComments && showCommentVotes == other.showCommentVotes && sortOrderTags == other.sortOrderTags && showGalleryPageNumbers == other.showGalleryPageNumbers && hentaiAtHomeLocalNetworkHost == other.hentaiAtHomeLocalNetworkHost && originalImages == other.originalImages && alwaysUseMpv == other.alwaysUseMpv && mpvStyle == other.mpvStyle && mpvThumbnailPane == other.mpvThumbnailPane;

  @override
  int get hashCode => profilelist.hashCode ^ profileSelected.hashCode ^ defaultProfile.hashCode ^ loadImageThroughHAtH.hashCode ^ loadBrowsingCountry.hashCode ^ imageSize.hashCode ^ imageSizeHorizontal.hashCode ^ imageSizeVertical.hashCode ^ galleryNameDisplay.hashCode ^ archiverSettings.hashCode ^ frontPageSettings.hashCode ^ ctDoujinshi.hashCode ^ ctManga.hashCode ^ ctArtistcg.hashCode ^ ctGamecg.hashCode ^ ctWestern.hashCode ^ ctNonH.hashCode ^ ctImageset.hashCode ^ ctCosplay.hashCode ^ ctAsianporn.hashCode ^ ctMisc.hashCode ^ favorites.hashCode ^ sortOrderFavorites.hashCode ^ ratings.hashCode ^ xn.hashCode ^ xl.hashCode ^ tagFilteringThreshold.hashCode ^ tagWatchingThreshold.hashCode ^ excludedUploaders.hashCode ^ xuQuotaUsing.hashCode ^ xuQuotaMax.hashCode ^ searchResultCount.hashCode ^ mouseOverThumbnails.hashCode ^ thumbnailSize.hashCode ^ thumbnailRows.hashCode ^ thumbnailScaling.hashCode ^ viewportOverride.hashCode ^ sortOrderComments.hashCode ^ showCommentVotes.hashCode ^ sortOrderTags.hashCode ^ showGalleryPageNumbers.hashCode ^ hentaiAtHomeLocalNetworkHost.hashCode ^ originalImages.hashCode ^ alwaysUseMpv.hashCode ^ mpvStyle.hashCode ^ mpvThumbnailPane.hashCode;
}
