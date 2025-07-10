import 'package:flutter/material.dart';

class AppTextStyle {
  static TextStyle custom({
    required String fontFamily,
    required FontWeight fontWeight,
    required Color color,
    double fontSize = 14,
  }) {
    return TextStyle(
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      color: color,
      fontSize: fontSize,
    );
  }
}

