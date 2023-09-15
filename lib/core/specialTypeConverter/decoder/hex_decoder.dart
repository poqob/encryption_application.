import 'package:converter_app/core/specialTypeConverter/decoder/abstract_decoder.dart';
import 'package:converter_app/core/specialTypeConverter/decoder/m_decode/m_hex_decode.dart';
import 'package:converter_app/core/specialTypeConverter/decoder/parser.dart';
import 'package:converter_app/core/specialTypeConverter/encryption/encrypts/m_weights.dart';
import 'package:converter_app/core/specialTypeConverter/encryption/enum_encryptionTypes.dart';

class HexDecoder extends ADecoder with HexDecode {
  @override
  List<String> decode(String encrypts) => HexDecode.hexToText(
      stringToEncrypts(encrypts, weightsMixin.hexWeights, EncryptionTypes.hex));
}
