import 'package:converter_app/core/specialTypeConverter/encryption/encrypts/abstract_encrypt.dart';
import 'package:converter_app/core/specialTypeConverter/encryption/encrypts/m_weights.dart';

mixin HexDecode {
  static List<String> hexToText(List<Encrypt> hexes) {
    String exprassion = "";
    List<String> result = List.empty(growable: true);

    for (Encrypt hex in hexes) {
      exprassion = hex.getEncrypt;
      int ascii = 0; // Initialize ascii for each character

      for (int i = 0; i < exprassion.length; i++) {
        // Calculate the value of the current hex digit and add it to the ascii
        int hexValue = weightsMixin.hexWeights[exprassion[i]]!;
        ascii = (ascii << 4) | hexValue; // Shift and add the new digit
      }

      result.add(String.fromCharCode(ascii));
    }

    return result;
  }
}

/**
 * | hexValue: This part of the expression performs a bitwise OR operation between the shifted ascii value and the decimal value of the current hexadecimal digit (hexValue). The result is a combination of the shifted ascii value and the decimal value of the new digit. The | operator sets the corresponding bits in the result to 1 if either of the operands 
 * 
 * ascii << 4: This part of the expression is a bitwise left shift operation. It takes the current value of ascii (which represents the accumulated decimal value so far) and shifts its binary representation 4 bits to the left. Shifting left by 4 bits is equivalent to multiplying by 16 because each left shift effectively moves the value one hexadecimal digit to the left. 
 */
