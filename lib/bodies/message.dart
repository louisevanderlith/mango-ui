import 'dart:convert';

class Message {
  final String message;
  final String email;
  final String name;
  final String phone;
  final String to;

  Message(this.message, this.email, this.name, this.phone, this.to);

  String toJson() {
    return jsonEncode({
      "Body": message,
      "Email": email,
      "Name": name,
      "Phone": phone,
      "To": to
    });
  }
}
