//Blog.API Article
import 'dart:convert';

import 'key.dart';

class Article {
  String _title;
  String _intro;
  String _category;
  Key _imageKey;
  String _content;
  String _writtenby;
  bool _public;

  Article(String title, String intro, String category, Key imageKey,
      String content, String writtenby, bool public) {
    _title = title;
    _intro = intro;
    _category = category;
    _imageKey = imageKey;
    _content = content;
    _writtenby = writtenby;
    _public = public;
  }

  String toJson() {
    return jsonEncode({
      "Title": _title,
      "Intro": _intro,
      "Category": _category,
      "ImageKey": _imageKey,
      "Content": _content,
      "WrittenBy": _writtenby,
      "Public": _public
    });
  }
}
