import 'package:mango_ui/bodies/key.dart';

class Up {
  final String fortargt;
  final String itemname;
  final Key itemkey;

  Up(this.fortargt, this.itemname, this.itemkey);

  Map<String, dynamic> toJson() {
    return {"For": fortargt, "ItemName": itemname, "ItemKey": itemkey};
  }
}
