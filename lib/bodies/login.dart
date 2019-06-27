import 'dart:convert';

import 'app.dart';

class Login {
  final App app;
  final String email;
  final String password;

  Login(this.app, this.email, this.password);

  @override
  String toString() {
    return jsonEncode({"App": app.toString(), "Email": email, "Password": password});
  }
}
