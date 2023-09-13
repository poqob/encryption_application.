import 'package:converter_app/core/converter/convert2.dart';
import 'package:converter_app/core/encryption/encrypts/abstract_encrypt.dart';

enum Algorithms {
  text2binary,
  text2octal,
  text2hex,
}

extension ExtensionAlghorithms on Algorithms {
  List<Encrypt> calculate(String input) {
    switch (index) {
      case 0:
        return Convert2.textToBinary(input);
      case 1:
        return Convert2.textToOctal(input);
      case 2:
        return Convert2.textToHex(input);
      default:
        return [];
    }
  }
}
