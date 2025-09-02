import 'package:flutter/material.dart';

// Get color name from: https://www.color-name.com/hex/
class AppColors {
  static const lotion = Color(0xFFFAFAFA);
  static const cultured = Color(0xFFF5F5F5);
  static const grayX11 = Color(0xFFBDBDBD);
  static const graniteGray = Color(0xFF616161);
  static const buttonBlue = Color(0xFF2196F3);
  static const vampireBlack = Color(0xFF0A0A0A);
  static const black87 = Color(0xDD000000);
  static const sonicSilver = Color(0xFF757575);
  static const white = Color(0xFFFFFFFF);

  // CIMA colors
  static const navy = Color(0xFF001F3F); // Primary
  static const teal = Color(0xFF008080); // Accent
  static const darkGray = Color(0xFF333333); // Text

  // Flutter Config for `Colors.blue` and use `AppColors.blue`
  static const int _bluePrimaryValue = 0xFF2196F3;
  static const MaterialColor blue = MaterialColor(
    _bluePrimaryValue,
    <int, Color>{
      50: Color(0xFFE3F2FD),
      100: Color(0xFFBBDEFB),
      200: Color(0xFF90CAF9),
      300: Color(0xFF64B5F6),
      400: Color(0xFF42A5F5),
      500: Color(_bluePrimaryValue),
      600: Color(0xFF1E88E5),
      700: Color(0xFF1976D2),
      800: Color(0xFF1565C0),
      900: Color(0xFF0D47A1),
    },
  );
}