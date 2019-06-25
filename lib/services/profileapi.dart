import 'dart:async';
import 'dart:convert';
import 'dart:html';

import '../bodies/key.dart';
import '../bodies/profile.dart';
import '../pathlookup.dart';
import 'requester.dart';

Future<HttpRequest> createProfile(Profile obj) async {
  return sendProfile("POST", obj.toString());
}

Future<HttpRequest> updateProfile(Key key, Profile obj) async {
  final data = jsonEncode({"Key": key, "Body": obj.toString()});

  return sendProfile("PUT", data);
}

Future<HttpRequest> sendProfile(String method, String data) async {
  final url = await buildPath("Folio.API", "profile", new List<String>());

  return invokeService(method, url, true, data);
}
