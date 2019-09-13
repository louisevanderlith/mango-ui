import 'key.dart';

class Header {
  final String heading;
  final String text;
  final Key imageKey;

  Header(this.heading, this.text, this.imageKey);

  Map<String, dynamic> toJson() {
    return {"ImageKey": imageKey, "Heading": heading, "Text": text};
  }
}
