import 'package:converter_app/core/specialTypeConverter/encryption/encrypts/abstract_encrypt.dart';
import 'package:converter_app/core/specialTypeConverter/encryption/enum_encryptionTypes.dart';
import 'package:converter_app/core/specialTypeConverter/encryption/encrypts/m_weights.dart';
import 'package:converter_app/core/specialTypeConverter/encryption/parser/parser.dart';

class Hex extends Encrypt {
  Hex(String encryptedText)
      : super(encryptedText,
            weights: weightsMixin.hexWeights,
            encryptionType: EncryptionTypes.hex);

  Hex.dumb()
      : super('',
            weights: weightsMixin.hexWeights,
            encryptionType: EncryptionTypes.hex);

  Hex.parse(String text)
      : super(parse(text, weightsMixin.hexWeights, EncryptionTypes.hex),
            weights: weightsMixin.hexWeights,
            encryptionType: EncryptionTypes.hex);
}
