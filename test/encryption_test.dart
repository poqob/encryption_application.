import 'package:encrypt_bho/encrypt_bho.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  String expression = "141 142 143";
  test(
      "converting",
      () => expect(OctalConverter.defaultConverter().decode(expression),
          ["a", "b", "c"]));

  test("parsing", () => expect(Octal.parse("142").getEncrypt, "142"));
}
