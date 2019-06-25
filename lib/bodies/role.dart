//Role defines a User's Role for a given Application
class Role {
  final String application;
  final String description;

  Role(this.application, this.description);

  Object toJson() {
    return {"ApplicationName": application, "Description": description};
  }
}