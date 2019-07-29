import 'dart:convert';

class Sociallink {
  final String icon;
  final String url;

  Sociallink(this.icon, this.url);

  String toJson() {
    return jsonEncode({"Icon": icon, "URL": url});
  }
}
