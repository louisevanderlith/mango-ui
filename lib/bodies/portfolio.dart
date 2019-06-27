import 'dart:convert';

import 'key.dart';

class Portfolio {
  final Key imageKey;
  final String url;
  final String name;

  Portfolio(this.imageKey, this.url, this.name);

  @override
  String toString() {
    return jsonEncode({"ImageKey": imageKey, "URL": url, "Name": name});
  }
}
