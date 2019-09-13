import 'key.dart';

class Portfolio {
  final Key imageKey;
  final String url;
  final String name;

  Portfolio(this.imageKey, this.url, this.name);

  Map<String, dynamic> toJson() {
    return {"ImageKey": imageKey, "URL": url, "Name": name};
  }
}
