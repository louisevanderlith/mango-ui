import 'dart:convert';
import 'package:test/test.dart';
import '../lib/bodies/role.dart';

void main() {
  test('Roles Serialization', () {
    var input = new List<Role>();
    input.add(new Role("Test.API", 0));
    var actual = jsonEncode(input);
    var expected = "[{\"ApplicationName\":\"Test.API\",\"Description\":0}]";
    expect(actual, expected);
  });
}
