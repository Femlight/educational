import 'package:flutter/material.dart';

class AppTheme {
  static const primaryColor = Color(0xFF34F699);
  static const secondaryColor = Color(0xFF54EBFF);
  static const backgroundColor = Color(0xFF070707);

  static ThemeData get darkTheme {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: primaryColor,
        primary: primaryColor,
        secondary: secondaryColor,
        background: backgroundColor,
        brightness: Brightness.dark,
      ),
      scaffoldBackgroundColor: backgroundColor,
      fontFamily: 'Outfit',
      textTheme: const TextTheme(
        headlineLarge: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        headlineMedium: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        bodyLarge: TextStyle(
          fontSize: 16,
          color: Colors.white,
        ),
      ),
    );
  }
}