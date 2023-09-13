import 'package:converter_app/core/encryption/encrypts/abstract_encrypt.dart';
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
    // Is the expression within the scope of weights?
    for (int i = 0; i < text.length; i++) {
      weightsMixin.w_binary.containsKey(text[i]) ? null : success = false;
    }
    return success
        ? Binary(text)
        : throw Exception(
            "Parsing error string->binary.\nTried to parse:$text");
  }
}
