import 'dart:convert';

class App {
  final String name;
  final String ip;
  final String location;
  final String instanceID;

  App(this.name, this.ip, this.location, this.instanceID);

  Map<String, dynamic> getObj() {
    return {
      "Name": name,
      "IP": ip,
      "Location": location,
      "InstanceID": instanceID
    };
  }

  Object toJson() {
    return jsonEncode(getObj());
  }
}
