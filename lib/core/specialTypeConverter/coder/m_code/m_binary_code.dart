import 'package:converter_app/core/specialTypeConverter/encryption/encrypts/encrypt_binary.dart';

mixin BinaryCode {
  static List<Binary> textToBinary(String text) {
    List<Binary> binaryList = List.empty(growable: true);

    for (int i = 0; i < text.length; i++) {
      binaryList.add(_characterToBinary(text[i]));
    }
    return binaryList;
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
