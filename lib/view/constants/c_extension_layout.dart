// ignore_for_file: camel_case_extensions

import 'package:flutter/material.dart';

extension contextExtension on BuildContext {
  double dynamicWidth(double value) => MediaQuery.of(this).size.width * value;
  double dynamicHeight(double value) => MediaQuery.of(this).size.height * value;
  double get lowRateWidth => dynamicWidth(0.04);
  double get lowRateHeight => dynamicHeight(0.04);
}

extension contextWidgetExtension on BuildContext {
  Widget dynamicHeightWidget(double value) =>
      SizedBox(height: dynamicHeight(value));
}
