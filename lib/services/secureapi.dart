import 'dart:async';
import 'dart:convert';
import 'dart:html';

import '../bodies/login.dart';
import '../bodies/role.dart';
import '../pathlookup.dart';
import 'requester.dart';

Future<HttpRequest> updateRoles(String key, List<Role> items) async {
  var url = await buildPath("Secure.API", "user", [key]);
  final data = jsonEncode(items);

  return invokeService("PUT", url, true, data);
}

Future<HttpRequest> sendLogin(Login obj) async {
  final url = await buildPath("Secure.API", "login", new List<String>());

  return invokeService("POST", url, false, obj.toString());
}

Future<HttpRequest> sendForgot(String identity) async {
  final url = await buildPath("Secure.API", "forgot", new List<String>());
  final data = jsonEncode(identity);

  return invokeService("POST", url, false, data);
}
