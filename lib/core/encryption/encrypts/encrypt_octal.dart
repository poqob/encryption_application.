import 'package:converter_app/core/encryption/encrypts/abstract_encrypt.dart';
import 'package:converter_app/core/encryption/encrypts/m_weights.dart';
import 'package:converter_app/core/encryption/encrypts/parsing_error.dart';
import 'package:converter_app/core/encryption/enum_encryptionTypes.dart';

class Octal extends Encrypt with weightsMixin {
  Octal(String encryptedText)
      : super(encryptedText,
            weights: weightsMixin.w_octal,
            encryptionType: EncryptionTypes.octal);

  Octal.dumb()
      : super('',
            weights: weightsMixin.w_octal,
            encryptionType: EncryptionTypes.octal);

  Octal.parse(String text)
      : super(_parse(text)!.getEncrypt,
            weights: weightsMixin.w_octal,
            encryptionType: EncryptionTypes.octal);

  static Octal? _parse(String text) {
    bool success = true;
    String? missMatchCharacter;
    int? missMatchIndex;
    // Is the expression within the scope of weights?
    for (int i = 0; i < text.length; i++) {
      if (!weightsMixin.w_octal.containsKey(text[i])) {
        missMatchCharacter = text[i];
        missMatchIndex = i;
        success = false;
        break;
      }
    }
    return success
        ? Octal(text)
        : throw parsingError(text, EncryptionTypes.octal, weightsMixin.w_octal,
            missMatchCharacter!, missMatchIndex!);
  }
}
