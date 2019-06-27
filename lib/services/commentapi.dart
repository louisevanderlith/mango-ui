import 'dart:async';
import 'dart:html';

import '../pathlookup.dart';
import 'requester.dart';
import '../bodies/comment.dart';

Future<HttpRequest> createComment(Comment obj) async {
  var url = await buildPath("Comment.API", "message", new List<String>());

  return invokeService("POST", url, true, obj.toString());
}
