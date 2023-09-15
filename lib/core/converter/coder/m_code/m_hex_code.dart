import 'package:converter_app/core/converter/coder/m_code/m_binary_code.dart';
import 'package:converter_app/core/encryption/encrypts/encrypt_binary.dart';
import 'package:converter_app/core/encryption/encrypts/encrypt_hex.dart';

mixin HexCode {
  static List<Hex> textToHex(String text) {
    List<Binary> binaryList = BinaryCode.textToBinary(text);
    List<Hex> hexList = List.empty(growable: true);
    for (var element in binaryList) {
      hexList.add(_binaryToHex(element));
    }
    return hexList;
  }

  static Hex _binaryToHex(Binary binary) {
    // Parse the binary string as an integer with base 2
    int decimal = int.parse(binary.getEncrypt, radix: 2);
    // Convert the decimal integer to a hex string with base 16
    String hex = decimal.toRadixString(16);
    // Return the hex string
    return Hex(hex);
  }
}
