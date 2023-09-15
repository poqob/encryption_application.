import 'package:converter_app/core/encryption/encrypts/abstract_encrypt.dart';
import 'package:converter_app/core/encryption/enum_encryptionTypes.dart';
import 'package:converter_app/core/encryption/encrypts/m_weights.dart';
import 'package:converter_app/core/encryption/parser/parser.dart';

class Binary extends Encrypt {
  Binary(String encryptedText)
      : super(encryptedText,
            weights: weightsMixin.binaryWeights,
            encryptionType: EncryptionTypes.binary);

  Binary.dumb()
      : super(
          '',
          weights: weightsMixin.binaryWeights,
          encryptionType: EncryptionTypes.binary,
        );

  Binary.parse(String text)
      : super(parse(text, weightsMixin.binaryWeights, EncryptionTypes.binary),
            weights: weightsMixin.binaryWeights,
            encryptionType: EncryptionTypes.binary);
}
