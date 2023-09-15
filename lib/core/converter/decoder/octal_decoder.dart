import 'package:converter_app/core/converter/decoder/abstract_decoder.dart';
import 'package:converter_app/core/converter/decoder/m_decode/m_octal_decode.dart';
import 'package:converter_app/core/converter/decoder/parser.dart';
import 'package:converter_app/core/encryption/encrypts/m_weights.dart';
import 'package:converter_app/core/encryption/enum_encryptionTypes.dart';

class OctalDecoder extends ADecoder with OctalDecode {
  @override
  List<String> decode(String encrypts) =>
      OctalDecode.octalToText(stringToEncrypts(
          encrypts, weightsMixin.octalWeights, EncryptionTypes.octal));
}
