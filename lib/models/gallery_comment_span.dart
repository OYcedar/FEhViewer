import 'package:flutter/foundation.dart';
import 'package:quiver/core.dart';
import 'index.dart';



@immutable
class GalleryCommentSpan {

  const GalleryCommentSpan({
    this.type,
    this.style,
    this.text,
    this.translate,
    this.href,
    this.imageUrl,
  });

  final String? type;
  final String? style;
  final String? text;
  final String? translate;
  final String? href;
  final String? imageUrl;

  factory GalleryCommentSpan.fromJson(Map<String,dynamic> json) => GalleryCommentSpan(
    type: json['type'] != null ? json['type'] as String : null,
    style: json['style'] != null ? json['style'] as String : null,
    text: json['text'] != null ? json['text'] as String : null,
    translate: json['translate'] != null ? json['translate'] as String : null,
    href: json['href'] != null ? json['href'] as String : null,
    imageUrl: json['imageUrl'] != null ? json['imageUrl'] as String : null
  );
  
  Map<String, dynamic> toJson() => {
    'type': type,
    'style': style,
    'text': text,
    'translate': translate,
    'href': href,
    'imageUrl': imageUrl
  };

  GalleryCommentSpan clone() => GalleryCommentSpan(
    type: type,
    style: style,
    text: text,
    translate: translate,
    href: href,
    imageUrl: imageUrl
  );


  GalleryCommentSpan copyWith({
    Optional<String?>? type,
    Optional<String?>? style,
    Optional<String?>? text,
    Optional<String?>? translate,
    Optional<String?>? href,
    Optional<String?>? imageUrl
  }) => GalleryCommentSpan(
    type: checkOptional(type, this.type),
    style: checkOptional(style, this.style),
    text: checkOptional(text, this.text),
    translate: checkOptional(translate, this.translate),
    href: checkOptional(href, this.href),
    imageUrl: checkOptional(imageUrl, this.imageUrl),
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is GalleryCommentSpan && type == other.type && style == other.style && text == other.text && translate == other.translate && href == other.href && imageUrl == other.imageUrl;

  @override
  int get hashCode => type.hashCode ^ style.hashCode ^ text.hashCode ^ translate.hashCode ^ href.hashCode ^ imageUrl.hashCode;
}
