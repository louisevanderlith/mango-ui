import 'dart:convert';

class Sociallink {
  final String icon;
  final String url;

  Sociallink(this.icon, this.url);

  @override
  String toString() {
    return jsonEncode({"Icon": icon, "URL": url});
  }
}