/// This file contains colors of app as an enum.
/// In project, almost every enum has get() method via extensions.
import 'package:flutter/material.dart';

enum ConstantColors {
  appbar,
  colorTextfield,
  appbar1,
}

extension ConstantExtension on ConstantColors {
  Color get getColor {
    switch (index) {
      case 0:
        return Colors.transparent; //Colors.green
      case 1:
        return Colors.black;
      case 2:
        return Colors.transparent; //Colors.green[100]!;
      default:
        return Colors.black;
    }
  }
}
