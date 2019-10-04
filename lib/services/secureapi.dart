import 'dart:async';
import 'dart:convert';
import 'dart:html';

import 'package:mango_ui/bodies/register.dart';

import '../bodies/key.dart';
import '../bodies/login.dart';
import '../bodies/role.dart';
import '../pathlookup.dart';
import 'requester.dart';

Future<HttpRequest> updateRoles(Key key, List<Role> items) async {
  var url = await buildPath("Secure.API", "user", [key.toJson()]);
  final data = jsonEncode(items);

  return invokeService("PUT", url, true, data);
}

Future<HttpRequest> sendLogin(Login obj) async {
  final url = await buildPath("Secure.API", "login", new List<String>());

  return invokeService("POST", url, false, jsonEncode(obj.toJson()));
}

Future<HttpRequest> sendForgot(String identity) async {
  final url = await buildPath("Secure.API", "forgot", new List<String>());
  final data = jsonEncode(identity);

  return invokeService("POST", url, false, data);
}

Future<HttpRequest> sendRegister(Register obj) async {
  final url = await buildPath("Secure.API", "register", new List<String>());
  final data = jsonEncode(obj.toJson());

  return invokeService("POST", url, false, data);
}