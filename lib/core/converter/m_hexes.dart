import 'dart:math';

import 'package:converter_app/core/converter/m_binaries.dart';
import 'package:converter_app/core/encryption/encrypts/encrypt_binary.dart';
import 'package:converter_app/core/encryption/encrypts/encrypt_hex.dart';
import 'package:converter_app/core/encryption/encrypts/m_weights.dart';

mixin HexesMixin {
  static List<Hex> textToHex(String text) {
    List<Binary> binaryList = BinariesMixin.textToBinary(text);
    List<Hex> hexList = List.empty(growable: true);
    for (var element in binaryList) {
      hexList.add(_binaryToHex(element));
    }
    return hexList;
  }

  static String hexToCharacter(Hex hex) {
    int ascii = 0;
    String exprassion = hex.getEncrypt;
    for (int i = 0; i < exprassion.length; i++) {
      ascii += weightsMixin.w_hex[exprassion[i]]! *
          pow(16, exprassion.length - 1 - i) as int;
    }
    return String.fromCharCode(ascii);
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
