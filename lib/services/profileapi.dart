import 'dart:async';
import 'dart:convert';
import 'dart:html';

import '../bodies/key.dart';
import '../bodies/profile.dart';
import '../pathlookup.dart';
import 'requester.dart';

Future<HttpRequest> createProfile(Profile obj) async {
  return sendProfile("POST", obj.toJson());
}

Future<HttpRequest> updateProfile(Key key, Profile obj) async {
  final data = {"Key": key.toJson(), "Body": obj.toJson()};
  
  return sendProfile("PUT", data);
}

Future<HttpRequest> sendProfile(String method, Map<String, dynamic> data) async {
  final url = await buildPath("Folio.API", "profile", new List<String>());

  return invokeService(method, url, true, jsonEncode(data));
}