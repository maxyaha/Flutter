import 'package:flutter/material.dart';

abstract class AppTheme {
  // Pastel lavender as primary seed
  static const _primaryColor = Color(0xFF9C8EC1);

  // Pastel palette constants
  static const pastelLavender = Color(0xFFE8E0F5);
  static const pastelRose = Color(0xFFFFE4E8);
  static const pastelMint = Color(0xFFDFF5EF);
  static const pastelBlue = Color(0xFFDEEDFF);
  static const pastelGray = Color(0xFFF7F5FB);

  static ThemeData get lightTheme => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: _primaryColor,
    brightness: Brightness.light,
    scaffoldBackgroundColor: pastelGray,
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(color: Color(0xFFE0D8F0)),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(color: Color(0xFFE0D8F0)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(color: _primaryColor, width: 1.5),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(color: Color(0xFFE57373), width: 1.0),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(color: Color(0xFFE57373), width: 1.5),
      ),
      labelStyle: const TextStyle(color: Color(0xFF9C8EC1)),
      prefixIconColor: _primaryColor,
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        backgroundColor: _primaryColor,
        foregroundColor: Colors.white,
        minimumSize: const Size.fromHeight(52),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.5,
        ),
      ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: pastelGray,
      surfaceTintColor: Colors.transparent,
      elevation: 0,
      scrolledUnderElevation: 0,
      titleTextStyle: TextStyle(
        color: Color(0xFF3D3050),
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
      iconTheme: IconThemeData(color: Color(0xFF9C8EC1)),
    ),
    cardTheme: CardThemeData(
      color: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      margin: EdgeInsets.zero,
    ),
  );

  static ThemeData get darkTheme => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: _primaryColor,
    brightness: Brightness.dark,
  );
}
