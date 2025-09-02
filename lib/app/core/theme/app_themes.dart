import 'package:flutter/material.dart';
import 'tokens/app_colors.dart';

class AppThemes {
  static final primary = ThemeData(
    primarySwatch: MaterialColor(
      0xFF001F3F, // Navy blue
      <int, Color>{
        50: const Color(0xFFE6F0FA),
        100: const Color(0xFFB3CDE6),
        200: const Color(0xFF80AED3),
        300: const Color(0xFF4D8FC0),
        400: const Color(0xFF1A70AD),
        500: const Color(0xFF001F3F),
        600: const Color(0xFF001A36),
        700: const Color(0xFF00152D),
        800: const Color(0xFF001024),
        900: const Color(0xFF000A1A),
      },
    ),
    scaffoldBackgroundColor: Colors.white, // White background
    textTheme: const TextTheme(
      headlineLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Color(0xFF001F3F)),
      headlineMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFF001F3F)),
      bodyLarge: TextStyle(fontSize: 16, color: Color(0xFF333333)),
      bodyMedium: TextStyle(fontSize: 14, color: Color(0xFF333333)),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF008080), // Teal
        foregroundColor: Colors.white,
      ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF001F3F),
      titleTextStyle: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
    ),
  );
}