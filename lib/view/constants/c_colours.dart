/// This file contains colors of app as an enum.
/// In project, almost every enum has get() method via extensions.
import 'package:flutter/material.dart';

enum ConstantColors {
  appbar,
  colorTextfield,
  colorLoginButton,
  colorSignupButton,
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
        return const Color.fromARGB(255, 99, 99, 99);
      case 3:
        return const Color.fromARGB(255, 99, 99, 99);
      case 4:
        return Colors.transparent; //Colors.green[100]!;
      default:
        return Colors.black;
    }
  }
}
