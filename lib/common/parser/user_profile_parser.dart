import 'package:fehviewer/const/const.dart';
import 'package:fehviewer/models/base/eh_models.dart';
import 'package:html/dom.dart';
import 'package:html/parser.dart' show parse;
import 'package:quiver/core.dart';

User parseUserProfile(String html) {
  final Document document = parse(html);

  final Element? profilenameElm = document.querySelector('#profilename');
  final String nickName = profilenameElm?.text ?? '';

  final Element? avatarElm =
      profilenameElm?.nextElementSibling?.nextElementSibling;

  String _avatarUrl = '';
  if (avatarElm?.children.isNotEmpty ?? false) {
    final Element? imageElm = avatarElm?.children.first;
    _avatarUrl = imageElm?.attributes['src'] ?? '';
    if (!_avatarUrl.startsWith('http')) {
      _avatarUrl = 'https://forums.e-hentai.org/$_avatarUrl';
    }
  }

  return kDefUser.copyWith(
    avatarUrl: Optional.of(_avatarUrl),
    nickName: Optional.of(nickName),
  );
}
