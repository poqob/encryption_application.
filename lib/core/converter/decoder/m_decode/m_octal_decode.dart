import 'package:converter_app/core/encryption/encrypts/abstract_encrypt.dart';
import 'package:converter_app/core/encryption/encrypts/m_weights.dart';

mixin OctalDecode {
  static List<String> octalToText(List<Encrypt> octals) {
    String expression = "";
    List<String> result = List.empty(growable: true);

    for (Encrypt octal in octals) {
      expression = octal.getEncrypt;
      int ascii = 0; // Initialize ascii for each character

      for (int i = 0; i < expression.length; i++) {
        // Calculate the value of the current octal digit and add it to ascii
        int octalValue = weightsMixin.octalWeights[expression[i]]!;
        ascii = ascii * 8 + octalValue;
      }

      result.add(String.fromCharCode(ascii));
    }

    return result;
  }
}
