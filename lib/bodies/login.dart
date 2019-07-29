import 'dart:convert';

import 'app.dart';

class Login {
  final App app;
  final String email;
  final String password;

  Login(this.app, this.email, this.password);

  String toJson() {
    return jsonEncode({"App": app.getObj(), "Email": email, "Password": password});
  }
}
