import 'dart:convert';

import 'key.dart';

class Header {
  final String heading;
  final String text;
  final Key imageKey;

  Header(this.heading, this.text, this.imageKey);

  @override
  String toString() {
    return jsonEncode({"ImageKey": imageKey, "Heading": heading, "Text": text});
  }
}
