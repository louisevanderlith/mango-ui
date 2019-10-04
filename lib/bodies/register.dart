import 'app.dart';

class Register {
  final App app;
  final String name;
  final String email;
  final String password;
  final String confirm;

  Register(this.app, this.name, this.email, this.password, this.confirm);

  Map<String, dynamic> toJson() {
    return {
      "App": this.app.toJson(),
      "Name": this.name,
      "Email": this.email,
      "Password": this.password,
      "PasswordRepeat": this.confirm
    };
  }
}