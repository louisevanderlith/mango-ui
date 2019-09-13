import 'app.dart';

class Login {
  final App app;
  final String email;
  final String password;

  Login(this.app, this.email, this.password);

  Map<String, dynamic> toJson() {
    return {"App": app.toJson(), "Email": email, "Password": password};
  }
}
