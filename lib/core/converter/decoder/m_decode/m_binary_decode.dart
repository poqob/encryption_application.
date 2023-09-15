import 'package:converter_app/core/encryption/encrypts/abstract_encrypt.dart';
import 'package:converter_app/core/encryption/encrypts/m_weights.dart';

mixin BinaryDecode {
  static List<String> binaryToText(List<Encrypt> binaries) {
    String expression = "";
    List<String> result = List.empty(growable: true);

    for (Encrypt binary in binaries) {
      expression = binary.getEncrypt;
      int ascii = 0; // Initialize ascii for each character

      for (int i = 0; i < expression.length; i++) {
        // Calculate the value of the current binary digit and add it to ascii
        int binaryValue = weightsMixin.binaryWeights[expression[i]]!;
        ascii = (ascii << 1) | binaryValue; // Shift and add the new digit
      }

      result.add(String.fromCharCode(ascii));
    }

    return result;
  }
}

// Rest of your weightsMixin remains the same
