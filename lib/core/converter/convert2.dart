import 'package:converter_app/core/converter/m_binaries.dart';
import 'package:converter_app/core/converter/m_hexes.dart';
import 'package:converter_app/core/converter/m_octals.dart';
import 'package:converter_app/core/encryption/encrypts/encrypt_binary.dart';
import 'package:converter_app/core/encryption/encrypts/encrypt_hex.dart';
import 'package:converter_app/core/encryption/encrypts/encrypt_octal.dart';

class Convert2 with BinariesMixin, OctalsMixin, HexesMixin {
  // A function that converts a plain text to binary
  static List<Hex> textToHex(String text) => HexesMixin.textToHex(text);
  static List<Octal> textToOctal(String text) => OctalsMixin.textToOctal(text);
  static List<Binary> textToBinary(String text) =>
      BinariesMixin.textToBinary(text);

  static String binaryToCharacter(Binary binary) =>
      BinariesMixin.binaryToCharacter(binary);

  static String octalToCharacter(Octal octal) =>
      OctalsMixin.octalToCharacter(octal);

  static String hexToCharacter(Hex hex) => HexesMixin.hexToCharacter(hex);

  // TODO: hex to text, octal to text, binary to text.
}
