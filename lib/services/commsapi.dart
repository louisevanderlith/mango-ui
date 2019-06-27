import 'dart:async';
import 'dart:html';

import '../bodies/message.dart';
import '../pathlookup.dart';
import 'requester.dart';

Future<HttpRequest> sendMessage(Message obj) async {
  var url = await buildPath("Comms.API", "message", new List<String>());

  return invokeService("POST", url, false, obj.toString());
}
