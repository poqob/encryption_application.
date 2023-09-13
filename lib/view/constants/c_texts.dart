/// This file contains colors of app as an enum.
/// In project, almost every enum has get() method via extensions.

enum ConstantTexts {
  appbar,
  textfield,
  resultLabel,
}

extension ConstantExtension on ConstantTexts {
  String get get {
    switch (index) {
      case 0:
        return "Click To Switch";
      case 1:
        return "Enter Plain Text";
      case 2:
        return "The result:";
      default:
        return "NULL";
    }
  }
}
