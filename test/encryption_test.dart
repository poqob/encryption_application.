import 'package:converter_app/core/encryption/encrypts/encrypt_hex.dart';
import 'package:converter_app/core/encryption/encrypts/encrypt_octal.dart';

void main() {
  String expression = "01234567";
  Octal hex = Octal.parse(expression);
  print(hex.getEncrypt);
}
