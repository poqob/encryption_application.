import 'dart:math';

import 'package:converter_app/core/converter/m_binaries.dart';
import 'package:converter_app/core/encryption/encrypts/encrypt_binary.dart';
import 'package:converter_app/core/encryption/encrypts/encrypt_octal.dart';
import 'package:converter_app/core/encryption/encrypts/m_weights.dart';

mixin OctalsMixin {
  static List<Octal> textToOctal(String text) {
    List<Binary> binaryList = BinariesMixin.textToBinary(text);
    List<Octal> octalList = List.empty(growable: true);
    for (var element in binaryList) {
      octalList.add(_binaryToOctal(element));
    }
    return octalList;
  }

  static String octalToCharacter(Octal octal) {
    int ascii = 0;
    String exprassion = octal.getEncrypt;
    for (int i = 0; i < exprassion.length; i++) {
      ascii += weightsMixin.w_octal[exprassion[i]]! *
          pow(8, exprassion.length - 1 - i) as int;
    }
    return String.fromCharCode(ascii);
  }

  static Octal _binaryToOctal(Binary binary) {
    // Parse the binary string as an integer with base 2
    int decimal = int.parse(binary.getEncrypt, radix: 2);
    // Convert the decimal integer to an octal string with base 8
    String octal = decimal.toRadixString(8);
    // Return the octal string
    return Octal(octal);
  }
}
