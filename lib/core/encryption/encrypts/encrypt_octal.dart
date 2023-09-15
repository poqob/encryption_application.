import 'package:converter_app/core/encryption/encrypts/abstract_encrypt.dart';
import 'package:converter_app/core/encryption/encrypts/m_weights.dart';
import 'package:converter_app/core/encryption/enum_encryptionTypes.dart';
import 'package:converter_app/core/encryption/parser/parser.dart';

class Octal extends Encrypt with weightsMixin {
  Octal(String encryptedText)
      : super(encryptedText,
            weights: weightsMixin.octalWeights,
            encryptionType: EncryptionTypes.octal);

  Octal.dumb()
      : super('',
            weights: weightsMixin.octalWeights,
            encryptionType: EncryptionTypes.octal);

  Octal.parse(String text)
      : super(parse(text, weightsMixin.octalWeights, EncryptionTypes.octal),
            weights: weightsMixin.octalWeights,
            encryptionType: EncryptionTypes.octal);
}
