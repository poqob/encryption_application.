import 'package:converter_app/core/converter/coder/binary_coder.dart';
import 'package:converter_app/core/converter/converter/abstract_converter.dart';
import 'package:converter_app/core/converter/decoder/binary_decoder.dart';
import 'package:converter_app/core/encryption/encrypts/abstract_encrypt.dart';

class BinaryConverter extends AConverter {
  BinaryConverter({required BinaryCoder coder, required BinaryDecoder decoder})
      : super(encoder: coder, decoder: decoder);

  // Factory constructor
  factory BinaryConverter.defaultConverter() {
    return BinaryConverter(coder: BinaryCoder(), decoder: BinaryDecoder());
  }

  List<Encrypt> encode(String text) => super.encoder.encode(text);

  List<String> decode(String encrypts) => super.decoder.decode(encrypts);

  // Add any other binary-based methods if needed.
}
