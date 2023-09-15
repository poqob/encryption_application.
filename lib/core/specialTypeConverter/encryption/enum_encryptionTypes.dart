// ignore: file_names
import 'package:converter_app/core/specialTypeConverter/encryption/encrypts/abstract_encrypt.dart';
import 'package:converter_app/core/specialTypeConverter/encryption/encrypts/encrypt_binary.dart';
import 'package:converter_app/core/specialTypeConverter/encryption/encrypts/encrypt_hex.dart';
import 'package:converter_app/core/specialTypeConverter/encryption/encrypts/encrypt_octal.dart';

enum EncryptionTypes {
  binary,
  octal,
  hex,
}

extension EncryptionExtension on EncryptionTypes {
  Encrypt get getDumbObject {
    switch (index) {
      case 0:
        return Binary.dumb();
      case 1:
        return Octal.dumb();
      case 2:
        return Hex.dumb();
      default:
        return Binary.dumb();
    }
  }
}
