import 'package:converter_app/core/encryption/enum_encryptionTypes.dart';
import 'package:converter_app/core/encryption/encrypts/m_weights.dart';

Exception parsingError(
        String text,
        EncryptionTypes type,
        Map<String, int> weights,
        String missMatchCharacter,
        int missMatchIndex) =>
    Exception(
      "Parsing error string->${type.name}.\nTried to parse:$text\nWeights are: ${weightsMixin.w_hex.keys}\nThe miss match character and index is: $missMatchCharacter at $missMatchIndex\n",
    );
