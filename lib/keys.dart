//getObjKey will attempt to read a key from the path or querystring
Key getObjKey() {
  var path = Uri.base.path; //window.location.pathname;
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

//Key is for husk database Keys
class Key {
  String _key;
  String _id;

  Key(String raw) {
    final clean = raw.replaceFirst('%60', '`');
    final parts = clean.split("`");

    if (parts.length != 2) {
      throw new Exception("Invalid Key");
    }

    _key = parts[0];
    _id = parts[1];
  }

  DateTime get timestamp {
    return DateTime.now();
  }

  String toJson() {
    return "${_key}`${_id}";
  }
}
