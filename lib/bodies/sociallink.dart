///Sociallink 
class Sociallink {
  final String icon;
  final String url;

  Sociallink(this.icon, this.url);

  Map<String, dynamic> toJson() {
    return {"Icon": icon, "URL": url};
  }
}
