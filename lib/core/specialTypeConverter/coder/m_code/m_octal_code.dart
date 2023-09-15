import 'package:converter_app/core/specialTypeConverter/coder/m_code/m_binary_code.dart';
import 'package:converter_app/core/specialTypeConverter/encryption/encrypts/encrypt_binary.dart';
import 'package:converter_app/core/specialTypeConverter/encryption/encrypts/encrypt_octal.dart';

mixin OctalCode {
  static List<Octal> textToOctal(String text) {
    List<Binary> binaryList = BinaryCode.textToBinary(text);
    List<Octal> octalList = List.empty(growable: true);
    for (var element in binaryList) {
      octalList.add(_binaryToOctal(element));
    }
    return octalList;
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
