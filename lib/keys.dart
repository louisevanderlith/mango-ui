import 'dart:html';

import 'bodies/key.dart';

Key getObjKey() {
  var path = window.location.pathname;
  final lastSlash = path.lastIndexOf('/');

  if (lastSlash > (path.length - 10)) {
    return new Key("0%600");
  }

  final queryIndex = path.indexOf('?');

  var rawKey = "0%600";
  if (queryIndex != -1) {
    rawKey = path.substring(lastSlash + 1, queryIndex);
  } else {
    rawKey = path.substring(lastSlash + 1);
  }

  return new Key(rawKey);
}
