import 'package:converter_app/core/specialTypeConverter/coder/octal_coder.dart';
import 'package:converter_app/core/specialTypeConverter/converter/abstract_converter.dart';
import 'package:converter_app/core/specialTypeConverter/decoder/octal_decoder.dart';
import 'package:converter_app/core/specialTypeConverter/encryption/encrypts/abstract_encrypt.dart';

class OctalConverter extends AConverter {
  OctalConverter({required OctalEncoder coder, required OctalDecoder decoder})
      : super(encoder: coder, decoder: decoder);

  // Factory constructor
  factory OctalConverter.defaultConverter() {
    return OctalConverter(coder: OctalEncoder(), decoder: OctalDecoder());
  }

  List<Encrypt> encode(String text) => super.encoder.encode(text);

  List<String> decode(String encrypts) => super.decoder.decode(encrypts);
}
