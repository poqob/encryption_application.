import 'package:converter_app/core/specialTypeConverter/encryption/encrypts/abstract_encrypt.dart';

abstract class ACoder {
  List<Encrypt> encode(String text);
}
