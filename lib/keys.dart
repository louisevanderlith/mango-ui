import 'dart:html';

import 'bodies/key.dart';

Key getObjKey() {
  var path = window.location.pathname;
  final rawKey = path.substring(path.lastIndexOf('/') + 1, path.indexOf('?'));

  return new Key(rawKey);
}
