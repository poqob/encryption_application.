import 'package:converter_app/core/encryption/encrypts/abstract_encrypt.dart';
import 'package:converter_app/core/encryption/enum_encryptionTypes.dart';
import 'package:converter_app/core/encryption/encrypts/m_weights.dart';

class Hex extends Encrypt {
  Hex(String encryptedText)
      : super(encryptedText,
            weights: weightsMixin.w_hex, encryptionType: EncryptionTypes.hex);

  Hex.dumb()
      : super('',
            weights: weightsMixin.w_hex, encryptionType: EncryptionTypes.hex);

  Hex.parse(String text)
      : super(_parse(text)!.getEncrypt,
            weights: weightsMixin.w_hex, encryptionType: EncryptionTypes.hex);

  static Hex? _parse(String text) {
    bool success = true;
    // Is the expression within the scope of weights?
    for (int i = 0; i < text.length; i++) {
      weightsMixin.w_hex.containsKey(text[i]) ? null : success = false;
    }
    return success
        ? Hex(text)
        : throw Exception("Parsing error string->hex.\nTried to parse:$text");
  }
}
