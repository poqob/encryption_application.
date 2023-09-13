// ignore: file_names
enum EncryptionTypes {
  binary,
  octal,
  hex,
}

extension ExtensionEncryptionTypes on EncryptionTypes {
  String getType() {
    switch (index) {
      case 0:
        return EncryptionTypes.binary.name;
      case 1:
        return EncryptionTypes.octal.name;
      case 2:
        return EncryptionTypes.hex.name;
      default:
        return "TEXT";
    }
  }
}
