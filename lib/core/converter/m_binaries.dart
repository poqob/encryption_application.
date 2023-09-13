import 'dart:math';

import 'package:converter_app/core/encryption/encrypts/encrypt_binary.dart';

mixin BinariesMixin {
  static List<Binary> textToBinary(String text) {
    List<Binary> binaryList = List.empty(growable: true);

    for (int i = 0; i < text.length; i++) {
      binaryList.add(_characterToBinary(text[i]));
    }
    return binaryList;
  }

  // converts a single binary exprassion to a character.
  static String binaryToCharacter(Binary binary) {
    int ascii = 0;
    String exprassion = binary.getEncrypt;
    for (int i = 0; i < exprassion.length; i++) {
      if (exprassion[i] == "1") {
        ascii += pow(2, exprassion.length - 1 - i) as int;
      }
    }
    return String.fromCharCode(ascii);
  }

  // A function that converts a plain text to binary
  static Binary _characterToBinary(String text) {
    // Get the code units of the text
    List<int> codeUnits = text.codeUnits;
    // Convert each code unit to binary and join them with spaces
    String binary = codeUnits.map((c) => c.toRadixString(2)).join(" ");
    // Return the binary string
    return Binary(binary);
  }
}
