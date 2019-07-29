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
