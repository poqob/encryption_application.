import 'package:converter_app/core/converter/coder/abstract_coder.dart';
import 'package:converter_app/core/converter/coder/m_code/m_hex_code.dart';
import 'package:converter_app/core/encryption/encrypts/encrypt_hex.dart';

class HexCoder extends ACoder with HexCode {
  @override
  List<Hex> encode(String text) => HexCode.textToHex(text);
}
