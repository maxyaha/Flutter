import 'package:flutter/material.dart';

abstract class AppTheme {
  static const _primaryColor = Color(0xFF6750A4); // Material You Purple

  static ThemeData get lightTheme => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: _primaryColor,
    brightness: Brightness.light,
  );

  static ThemeData get darkTheme => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: _primaryColor,
    brightness: Brightness.dark,
  );
}
