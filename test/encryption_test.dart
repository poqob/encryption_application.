import 'package:encrypt_bho/encrypt_bho.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  String expression = "141 142 143";
  test(
      "test1",
      () => expect(OctalConverter.defaultConverter().decode(expression),
          ["a", "b", "c"]));
}
