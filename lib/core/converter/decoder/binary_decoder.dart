import 'package:converter_app/core/converter/decoder/abstract_decoder.dart';
import 'package:converter_app/core/converter/decoder/m_decode/m_binary_decode.dart';
import 'package:converter_app/core/converter/decoder/parser.dart';
import 'package:converter_app/core/encryption/encrypts/m_weights.dart';
import 'package:converter_app/core/encryption/enum_encryptionTypes.dart';

class BinaryDecoder extends ADecoder with BinaryDecode {
  @override
  List<String> decode(String encrypts) =>
      BinaryDecode.binaryToText(stringToEncrypts(
          encrypts, weightsMixin.binaryWeights, EncryptionTypes.binary));
}
