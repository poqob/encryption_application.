import 'package:converter_app/core/encryption/encrypts/abstract_encrypt.dart';
import 'package:converter_app/core/encryption/encrypts/parsing_error.dart';
import 'package:converter_app/core/encryption/enum_encryptionTypes.dart';
import 'package:converter_app/core/encryption/encrypts/m_weights.dart';

class Binary extends Encrypt {
  Binary(String encryptedText)
      : super(encryptedText,
            weights: weightsMixin.w_binary,
            encryptionType: EncryptionTypes.binary);

  Binary.dumb()
      : super(
          '',
          weights: weightsMixin.w_binary,
          encryptionType: EncryptionTypes.binary,
        );

  Binary.parse(String text)
      : super(_parse(text)!.getEncrypt,
            weights: weightsMixin.w_binary,
            encryptionType: EncryptionTypes.binary);

  static Binary? _parse(String text) {
    bool success = true;
    String? missMatchCharacter;
    int? missMatchIndex;
    // Is the expression within the scope of weights?
    for (int i = 0; i < text.length; i++) {
      if (!weightsMixin.w_binary.containsKey(text[i])) {
        missMatchCharacter = text[i];
        missMatchIndex = i;
        success = false;
        break;
      }
    }
    return success
        ? Binary(text)
        : throw parsingError(text, EncryptionTypes.binary,
            weightsMixin.w_binary, missMatchCharacter!, missMatchIndex!);
  }
}
