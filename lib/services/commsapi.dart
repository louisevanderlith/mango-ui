import 'dart:async';
import 'dart:convert';
import 'dart:html';

import '../bodies/message.dart';
import '../pathlookup.dart';
import 'requester.dart';

Future<HttpRequest> sendMessage(Message obj) async {
  var url = await buildPath("Comms.API", "submit", new List<String>());

  return invokeService("POST", url, false, jsonEncode(obj.toJson()));
}
