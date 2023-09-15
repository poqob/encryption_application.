import 'package:converter_app/core/converter/coder/abstract_coder.dart';
import 'package:converter_app/core/converter/coder/m_code/m_octal_code.dart';
import 'package:converter_app/core/encryption/encrypts/encrypt_octal.dart';

class OctalEncoder extends ACoder with OctalCode {
  @override
  List<Octal> encode(String text) => OctalCode.textToOctal(text);
}
