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
    algorithm.calculate(controller.text).forEach((element) {
      result += " $element";
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }
}
