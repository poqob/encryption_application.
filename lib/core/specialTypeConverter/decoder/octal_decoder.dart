import 'package:converter_app/core/specialTypeConverter/decoder/abstract_decoder.dart';
import 'package:converter_app/core/specialTypeConverter/decoder/m_decode/m_octal_decode.dart';
import 'package:converter_app/core/specialTypeConverter/decoder/parser.dart';
import 'package:converter_app/core/specialTypeConverter/encryption/encrypts/m_weights.dart';
import 'package:converter_app/core/specialTypeConverter/encryption/enum_encryptionTypes.dart';

class OctalDecoder extends ADecoder with OctalDecode {
  @override
  List<String> decode(String encrypts) =>
      OctalDecode.octalToText(stringToEncrypts(
          encrypts, weightsMixin.octalWeights, EncryptionTypes.octal));
}
