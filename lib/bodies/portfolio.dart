class Portfolio {
  final String icon;
  final String url;
  final String name;
  final String description;

  Portfolio(this.icon, this.url, this.name, this.description);

  Map<String, dynamic> toJson() {
    return {"Icon": icon, "URL": url, "Name": name, "Description": description};
  }
}
