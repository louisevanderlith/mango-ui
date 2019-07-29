//Role defines a User's Role for a given Application
import 'dart:convert';

class Role {
  final String application;
  final num description;

  Role(this.application, this.description);

  String toJson() {
    return jsonEncode({"ApplicationName": application, "Description": description});
  }
}
