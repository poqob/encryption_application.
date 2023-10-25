import 'package:converter_app/view/app.dart';
import 'package:encrypt_bho/encrypt_bho.dart';
import 'package:flutter/material.dart';

mixin AppMixin on State<MyHomePage> {
  // A controller for the text input field
  TextEditingController controller = TextEditingController();
  String result = "";
  Algorithms algorithm = Algorithms.text2binary;

  void refleshResult() {
    result = "";
    try {
      algorithm.calculate(controller.text).forEach((element) {
        result += " $element";
      });
    } catch (e) {}
  }

  //TODO: notify appbar to change the option itself.
  void switchAlgorithm() {
    setState(() {
      if (algorithm == Algorithms.text2binary) {
        algorithm = Algorithms.binary2text;
      } else if (algorithm == Algorithms.binary2text) {
        algorithm = Algorithms.text2binary;
      } else if (algorithm == Algorithms.text2hex) {
        algorithm = Algorithms.hex2text;
      } else if (algorithm == Algorithms.hex2text) {
        algorithm = Algorithms.text2hex;
      } else if (algorithm == Algorithms.text2octal) {
        algorithm = Algorithms.octal2text;
      } else if (algorithm == Algorithms.octal2text) {
        algorithm = Algorithms.text2octal;
      }

      refleshResult();
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }
}
