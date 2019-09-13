import 'dart:async';
import 'dart:convert';
import 'dart:html';

import '../bodies/article.dart';
import '../bodies/key.dart';
import '../pathlookup.dart';
import 'requester.dart';

Future<HttpRequest> createArticle(Article obj) async {
  var url = await buildPath("Blog.API", "article", new List<String>());

  return invokeService("POST", url, true, jsonEncode(obj.toJson()));
}

Future<HttpRequest> updateArticle(Key key, Article obj) async {
  var url = await buildPath("Blog.API", "article", new List<String>());
  final data = jsonEncode({"Key": key.toJson(), "Body": obj.toJson()});

  return invokeService("PUT", url, true, data);
}

Future<HttpRequest> deleteArticle(Key key) async {
  var url = await buildPath("Blog.API", "article", [key.toJson()]);

  return invokeService("DELETE", url, true, "");
}
