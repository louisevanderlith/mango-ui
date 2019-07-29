import 'dart:convert';

import 'header.dart';
import 'key.dart';
import 'portfolio.dart';
import 'sociallink.dart';

class Profile {
  final String title;
  final String description;
  final String email;
  final String phone;
  final String url;
  final String gtag;
  final Key imageKey;
  final List<Portfolio> portfolia;
  final List<Sociallink> socials;
  final List<Header> headers;

  Profile(this.title, this.description, this.email, this.phone, this.url,
      this.gtag, this.imageKey, this.portfolia, this.socials, this.headers);

  String toJson() {
    return jsonEncode({
      "Title": title,
      "Description": description,
      "ContactEmail": email,
      "ContactPhone": phone,
      "URL": url,
      "GTag": gtag,
      "ImageKey": imageKey,
      "PortfolioItems": portfolia,
      "SocialLinks": socials,
      "Headers": headers
    });
  }
}
