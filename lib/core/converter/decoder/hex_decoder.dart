import 'package:converter_app/core/converter/decoder/abstract_decoder.dart';
import 'package:converter_app/core/converter/decoder/m_decode/m_hex_decode.dart';
import 'package:converter_app/core/converter/decoder/parser.dart';
import 'package:converter_app/core/encryption/encrypts/m_weights.dart';
import 'package:converter_app/core/encryption/enum_encryptionTypes.dart';

class HexDecoder extends ADecoder with HexDecode {
  @override
  List<String> decode(String encrypts) => HexDecode.hexToText(
      stringToEncrypts(encrypts, weightsMixin.hexWeights, EncryptionTypes.hex));
}
