import 'dart:async';
import 'dart:convert';
import 'dart:html';

import '../bodies/key.dart';
import '../bodies/profile.dart';
import '../pathlookup.dart';
import 'requester.dart';

Future<HttpRequest> createProfile(Profile obj) async {
   final url = await buildPath("Folio.API", "profile", new List<String>());
  return invokeService("POST", url, true, jsonEncode(obj.toJson()));
}

Future<HttpRequest> updateProfile(Key key, Profile obj) async {
  final url = await buildPath("Folio.API", "profile", [key.toJson()]);
  return invokeService("PUT", url, true, jsonEncode(obj.toJson()));
}