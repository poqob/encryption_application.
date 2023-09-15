import 'package:converter_app/core/specialTypeConverter/coder/abstract_coder.dart';
import 'package:converter_app/core/specialTypeConverter/decoder/abstract_decoder.dart';

abstract class AConverter {
  final ACoder encoder;
  final ADecoder decoder;
  AConverter({required this.encoder, required this.decoder});
}
