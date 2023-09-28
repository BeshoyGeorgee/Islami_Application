import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplicationTheme {
  static bool isDark = true;

  static ThemeData lightTheme = ThemeData(
    primaryColor: const Color(0xffB7935F),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: Colors.black),
      elevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle: GoogleFonts.elMessiri(
          fontWeight: FontWeight.bold, fontSize: 30, color: Colors.black),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      selectedIconTheme: IconThemeData(
        color: Colors.black,
        size: 32,
      ),
      selectedItemColor: Colors.black,
      unselectedIconTheme: IconThemeData(color: Colors.white, size: 32),
      unselectedItemColor: Colors.white,
      backgroundColor: Color(0xffB7935F),
    ),
    textTheme: TextTheme(
      titleLarge: GoogleFonts.elMessiri(
          fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
      bodyLarge: GoogleFonts.elMessiri(
        fontWeight: FontWeight.bold,
        fontSize: 25,
        color: Colors.black,
      ),
      bodyMedium: GoogleFonts.elMessiri(
          fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black),
      bodySmall: GoogleFonts.elMessiri(
          fontWeight: FontWeight.normal, fontSize: 18, color: Colors.black),
    ),
  );

  static ThemeData darkTheme = ThemeData(
      primaryColor: Color(0xff141A2E),
      colorScheme: ColorScheme.fromSeed(
          primary: Color(0xff141A2E),
          seedColor: Color(0xff141A2E),
          onSecondary: Color(0xffFACC1D)),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: IconThemeData(
          color: Color(0xffFACC1D),
          size: 32,
        ),
        selectedItemColor: Color(0xffFACC1D),
        unselectedIconTheme: IconThemeData(color: Colors.white, size: 32),
        unselectedItemColor: Colors.white,
        backgroundColor: Color(0xff141A2E),
      ),
      textTheme: TextTheme(
        titleLarge: GoogleFonts.elMessiri(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        bodyLarge: GoogleFonts.elMessiri(
          fontWeight: FontWeight.bold,
          fontSize: 25,
          color: Colors.white,
        ),
        bodyMedium: GoogleFonts.elMessiri(
            fontSize: 25, fontWeight: FontWeight.w500, color: Colors.white),
        bodySmall: GoogleFonts.elMessiri(
            fontWeight: FontWeight.normal, fontSize: 18, color: Colors.white),
      ),
      dividerColor: Color(0xffFACC1D));
}
