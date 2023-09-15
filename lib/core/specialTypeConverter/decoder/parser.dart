import 'package:converter_app/core/specialTypeConverter/encryption/encrypts/abstract_encrypt.dart';
import 'package:converter_app/core/specialTypeConverter/encryption/enum_encryptionTypes.dart';
import 'package:converter_app/core/specialTypeConverter/encryption/parser/parser.dart';

List<Encrypt> stringToEncrypts(
    String input, Map<String, int> weights, EncryptionTypes type) {
  List<Encrypt> list = List.empty(growable: true);
  Encrypt encrypt;

  input.split(' ').forEach(
    (element) {
      encrypt = type.getDumbObject;
      encrypt.setEncrypt = parse(element, weights, type);
      list.add(encrypt);
    },
  );
  list.removeWhere(
    (element) => element.getEncrypt.isEmpty,
  );
  return list;
}
