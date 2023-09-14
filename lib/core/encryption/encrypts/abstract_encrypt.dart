import 'package:converter_app/core/encryption/enum_encryptionTypes.dart';

abstract class Encrypt {
  String? _encryptedText;
  final EncryptionTypes _encryptionType;
  final Map<String, int> _weights;

  Encrypt(this._encryptedText,
      {required Map<String, int> weights,
      required EncryptionTypes encryptionType})
      : _encryptionType = encryptionType,
        _weights = weights;

  Map<String, int> get getWeights => _weights;
  String get getEncrypt => _encryptedText!;
  set setEncrypt(String enc) => _encryptedText = enc;
  String get getEncryptionType => _encryptionType.name;
}
