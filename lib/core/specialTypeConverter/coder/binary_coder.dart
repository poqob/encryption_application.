import 'package:converter_app/core/specialTypeConverter/coder/abstract_coder.dart';
import 'package:converter_app/core/specialTypeConverter/coder/m_code/m_binary_code.dart';
import 'package:converter_app/core/specialTypeConverter/encryption/encrypts/encrypt_binary.dart';

class BinaryCoder extends ACoder with BinaryCode {
  @override
  List<Binary> encode(String text) => BinaryCode.textToBinary(text);
}
