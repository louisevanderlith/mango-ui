import 'dart:async';
import 'dart:convert';
import 'dart:html';

import '../pathlookup.dart';
import 'requester.dart';
import '../bodies/comment.dart';

Future<HttpRequest> createComment(Comment obj) async {
  var url = await buildPath("Comment.API", "messages", new List<String>());

  return invokeService("POST", url, true, jsonEncode(obj.toJson()));
}
