import 'package:converter_app/core/specialTypeConverter/encryption/enum_encryptionTypes.dart';
import 'package:converter_app/core/specialTypeConverter/encryption/parser/parsing_error.dart';

String parse(String text, Map<String, int> weights, EncryptionTypes type) {
  bool success = true;
  String? missMatchCharacter;
  int? missMatchIndex;
  // Is the expression within the scope of weights?
  for (int i = 0; i < text.length; i++) {
    if (!weights.containsKey(text[i])) {
      missMatchCharacter = text[i];
      missMatchIndex = i;
      success = false;
      throw parsingError(
          text, type, weights, missMatchCharacter, missMatchIndex);
    }
  }
  return success ? text : "error";
}
