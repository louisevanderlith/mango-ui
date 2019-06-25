import 'dart:convert';

import 'key.dart';

class Comment {
  final Key itemKey;
  final String text;
  final String commentType;

  List<Comment> _children;

  Comment(this.itemKey, this.text, this.commentType);

  void addChild(Comment child) {
    _children.add(child);
  }

  @override
  String toString() {
    return jsonEncode({
      "ItemKey": itemKey,
      "Text": text,
      "CommentType": commentType,
      "Children": _children
    });
  }
}
