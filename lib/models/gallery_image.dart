import 'package:flutter/foundation.dart';
import 'package:quiver/core.dart';
import 'index.dart';



@immutable
class GalleryImage {

  const GalleryImage({
    this.largeThumb,
    this.completeCache,
    this.startPrecache,
    required this.ser,
    this.href,
    this.imageUrl,
    this.originImageUrl,
    this.thumbUrl,
    this.thumbHeight,
    this.thumbWidth,
    this.imageHeight,
    this.imageWidth,
    this.offSet,
    this.sourceId,
    this.completeHeight,
    this.gid,
    this.token,
    this.completeDownload,
    this.filePath,
  });

  final bool? largeThumb;
  final bool? completeCache;
  final bool? startPrecache;
  final int ser;
  final String? href;
  final String? imageUrl;
  final String? originImageUrl;
  final String? thumbUrl;
  final double? thumbHeight;
  final double? thumbWidth;
  final double? imageHeight;
  final double? imageWidth;
  final double? offSet;
  final String? sourceId;
  final bool? completeHeight;
  final String? gid;
  final String? token;
  final bool? completeDownload;
  final String? filePath;

  factory GalleryImage.fromJson(Map<String,dynamic> json) => GalleryImage(
    largeThumb: json['largeThumb'] != null ? json['largeThumb'] as bool : null,
    completeCache: json['completeCache'] != null ? json['completeCache'] as bool : null,
    startPrecache: json['startPrecache'] != null ? json['startPrecache'] as bool : null,
    ser: json['ser'] as int,
    href: json['href'] != null ? json['href'] as String : null,
    imageUrl: json['imageUrl'] != null ? json['imageUrl'] as String : null,
    originImageUrl: json['originImageUrl'] != null ? json['originImageUrl'] as String : null,
    thumbUrl: json['thumbUrl'] != null ? json['thumbUrl'] as String : null,
    thumbHeight: json['thumbHeight'] != null ? json['thumbHeight'] as double : null,
    thumbWidth: json['thumbWidth'] != null ? json['thumbWidth'] as double : null,
    imageHeight: json['imageHeight'] != null ? json['imageHeight'] as double : null,
    imageWidth: json['imageWidth'] != null ? json['imageWidth'] as double : null,
    offSet: json['offSet'] != null ? json['offSet'] as double : null,
    sourceId: json['sourceId'] != null ? json['sourceId'] as String : null,
    completeHeight: json['completeHeight'] != null ? json['completeHeight'] as bool : null,
    gid: json['gid'] != null ? json['gid'] as String : null,
    token: json['token'] != null ? json['token'] as String : null,
    completeDownload: json['completeDownload'] != null ? json['completeDownload'] as bool : null,
    filePath: json['filePath'] != null ? json['filePath'] as String : null
  );
  
  Map<String, dynamic> toJson() => {
    'largeThumb': largeThumb,
    'completeCache': completeCache,
    'startPrecache': startPrecache,
    'ser': ser,
    'href': href,
    'imageUrl': imageUrl,
    'originImageUrl': originImageUrl,
    'thumbUrl': thumbUrl,
    'thumbHeight': thumbHeight,
    'thumbWidth': thumbWidth,
    'imageHeight': imageHeight,
    'imageWidth': imageWidth,
    'offSet': offSet,
    'sourceId': sourceId,
    'completeHeight': completeHeight,
    'gid': gid,
    'token': token,
    'completeDownload': completeDownload,
    'filePath': filePath
  };

  GalleryImage clone() => GalleryImage(
    largeThumb: largeThumb,
    completeCache: completeCache,
    startPrecache: startPrecache,
    ser: ser,
    href: href,
    imageUrl: imageUrl,
    originImageUrl: originImageUrl,
    thumbUrl: thumbUrl,
    thumbHeight: thumbHeight,
    thumbWidth: thumbWidth,
    imageHeight: imageHeight,
    imageWidth: imageWidth,
    offSet: offSet,
    sourceId: sourceId,
    completeHeight: completeHeight,
    gid: gid,
    token: token,
    completeDownload: completeDownload,
    filePath: filePath
  );


  GalleryImage copyWith({
    Optional<bool?>? largeThumb,
    Optional<bool?>? completeCache,
    Optional<bool?>? startPrecache,
    int? ser,
    Optional<String?>? href,
    Optional<String?>? imageUrl,
    Optional<String?>? originImageUrl,
    Optional<String?>? thumbUrl,
    Optional<double?>? thumbHeight,
    Optional<double?>? thumbWidth,
    Optional<double?>? imageHeight,
    Optional<double?>? imageWidth,
    Optional<double?>? offSet,
    Optional<String?>? sourceId,
    Optional<bool?>? completeHeight,
    Optional<String?>? gid,
    Optional<String?>? token,
    Optional<bool?>? completeDownload,
    Optional<String?>? filePath
  }) => GalleryImage(
    largeThumb: checkOptional(largeThumb, this.largeThumb),
    completeCache: checkOptional(completeCache, this.completeCache),
    startPrecache: checkOptional(startPrecache, this.startPrecache),
    ser: ser ?? this.ser,
    href: checkOptional(href, this.href),
    imageUrl: checkOptional(imageUrl, this.imageUrl),
    originImageUrl: checkOptional(originImageUrl, this.originImageUrl),
    thumbUrl: checkOptional(thumbUrl, this.thumbUrl),
    thumbHeight: checkOptional(thumbHeight, this.thumbHeight),
    thumbWidth: checkOptional(thumbWidth, this.thumbWidth),
    imageHeight: checkOptional(imageHeight, this.imageHeight),
    imageWidth: checkOptional(imageWidth, this.imageWidth),
    offSet: checkOptional(offSet, this.offSet),
    sourceId: checkOptional(sourceId, this.sourceId),
    completeHeight: checkOptional(completeHeight, this.completeHeight),
    gid: checkOptional(gid, this.gid),
    token: checkOptional(token, this.token),
    completeDownload: checkOptional(completeDownload, this.completeDownload),
    filePath: checkOptional(filePath, this.filePath),
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is GalleryImage && largeThumb == other.largeThumb && completeCache == other.completeCache && startPrecache == other.startPrecache && ser == other.ser && href == other.href && imageUrl == other.imageUrl && originImageUrl == other.originImageUrl && thumbUrl == other.thumbUrl && thumbHeight == other.thumbHeight && thumbWidth == other.thumbWidth && imageHeight == other.imageHeight && imageWidth == other.imageWidth && offSet == other.offSet && sourceId == other.sourceId && completeHeight == other.completeHeight && gid == other.gid && token == other.token && completeDownload == other.completeDownload && filePath == other.filePath;

  @override
  int get hashCode => largeThumb.hashCode ^ completeCache.hashCode ^ startPrecache.hashCode ^ ser.hashCode ^ href.hashCode ^ imageUrl.hashCode ^ originImageUrl.hashCode ^ thumbUrl.hashCode ^ thumbHeight.hashCode ^ thumbWidth.hashCode ^ imageHeight.hashCode ^ imageWidth.hashCode ^ offSet.hashCode ^ sourceId.hashCode ^ completeHeight.hashCode ^ gid.hashCode ^ token.hashCode ^ completeDownload.hashCode ^ filePath.hashCode;
}
