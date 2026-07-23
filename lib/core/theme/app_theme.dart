import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Premium Deep Dark Palette
  static const Color _ghBackground = Color(0xFF000000); // True Black
  static const Color _ghSurface = Color(0xFF141414); // Very deep gray
  static const Color _ghBorder = Color(0xFF262626); // Subtle border
  static const Color _ghPrimary = Color(0xFF3A86FF); // Vibrant Blue
  static const Color _ghTextPrimary = Color(0xFFF9FAFB); // Off-white
  static const Color _ghTextSecondary = Color(0xFFA1A1AA); // Zinc-400

  static ThemeData get lightTheme {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: _ghPrimary,
        brightness: Brightness.light,
      ),
      useMaterial3: true,
      textTheme: GoogleFonts.interTextTheme(ThemeData.light().textTheme),
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        elevation: 0,
      ),
    );
  }

  static ThemeData get darkTheme {
    final baseTextTheme = ThemeData.dark().textTheme;
    return ThemeData(
      scaffoldBackgroundColor: _ghBackground,
      colorScheme: const ColorScheme.dark(
        primary: _ghPrimary,
        surface: _ghSurface,
        onSurface: _ghTextPrimary,
        outline: _ghBorder,
        onSurfaceVariant: _ghTextSecondary,
      ),
      useMaterial3: true,
      textTheme: GoogleFonts.interTextTheme(baseTextTheme).apply(
        bodyColor: _ghTextPrimary,
        displayColor: _ghTextPrimary,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: _ghBackground,
        centerTitle: true,
        elevation: 0,
        scrolledUnderElevation: 0,
        iconTheme: IconThemeData(color: _ghTextPrimary),
        titleTextStyle: TextStyle(
          color: _ghTextPrimary,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
      cardTheme: CardThemeData(
        color: _ghSurface,
        elevation: 0,
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: _ghBorder),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: _ghPrimary,
          foregroundColor: Colors.white,
          minimumSize: const Size.fromHeight(56),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          textStyle: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: _ghSurface,
        hintStyle: const TextStyle(color: _ghTextSecondary),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: _ghBorder),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: _ghBorder),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: _ghPrimary, width: 2),
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: _ghSurface,
        selectedItemColor: _ghPrimary,
        unselectedItemColor: _ghTextSecondary,
      ),
    );
  }
}
