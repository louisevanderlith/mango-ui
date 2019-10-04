import 'dart:convert';
import 'package:mango_ui/bodies/header.dart';
import 'package:mango_ui/bodies/key.dart';
import 'package:mango_ui/bodies/portfolio.dart';
import 'package:mango_ui/bodies/profile.dart';
import 'package:mango_ui/bodies/sociallink.dart';
import 'package:test/test.dart';
import '../lib/bodies/role.dart';

void main() {
  test('Roles Serialization', () {
    var input = new List<Role>();
    input.add(new Role("Test.API", 0));
    var actual = jsonEncode(input);
    var expected = "[{\"ApplicationName\":\"Test.API\",\"Description\":0}]";
    expect(actual, expected);
  });

  test('Profile Serialization', () {
    var portfolia = new List<Portfolio>();
    portfolia.add(
        new Portfolio("fa-facebook", "https://p.website.com", "Portfolio A", "This is a portfolio"));

    var socials = new List<Sociallink>();
    socials.add(new Sociallink("fa-facebook", "https://facebook.com/website"));

    var headers = new List<Header>();
    headers.add(new Header("Header A", "Testing Head A", new Key("0`0")));

    var p = new Profile(
        "mango",
        "Test Mango profile",
        "test@fake.com",
        "0000001234",
        "https://website.com",
        "UA-000000000-0",
        new Key("0`0"),
        portfolia,
        socials,
        headers);
    var k = new Key("0`0");
    var input = {"Key": k.toJson(), "Body": p.toJson()};
    var actual = jsonEncode(input);
    var expected =
        "{\"Key\":\"0`0\",\"Body\":{\"Title\":\"mango\",\"Description\":\"Test Mango profile\",\"ContactEmail\":\"test@fake.com\",\"ContactPhone\":\"0000001234\",\"URL\":\"https://website.com\",\"GTag\":\"UA-000000000-0\",\"ImageKey\":\"0`0\",\"PortfolioItems\":[{\"Icon\":\"fa-facebook\",\"URL\":\"https://p.website.com\",\"Name\":\"Portfolio A\",\"Description\":\"This is a portfolio\"}],\"SocialLinks\":[{\"Icon\":\"fa-facebook\",\"URL\":\"https://facebook.com/website\"}],\"Headers\":[{\"ImageKey\":\"0`0\",\"Heading\":\"Header A\",\"Text\":\"Testing Head A\"}]}}";
    expect(actual, expected);
  });
}
