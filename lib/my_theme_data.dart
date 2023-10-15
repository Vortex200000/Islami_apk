import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemesData {
  static Color brimaryColour = Color(0xffbacB7935F);
  static Color blackColour = Color(0xff242424);

  static ThemeData lightTheme = ThemeData(
      textTheme: TextTheme(
        bodySmall: GoogleFonts.elMessiri(
            fontSize: 20, fontWeight: FontWeight.w400, color: blackColour),
        bodyMedium: GoogleFonts.elMessiri(
          fontSize: 25,
          fontWeight: FontWeight.w700,
          color: Color(0xFFFFFF),
        ),
        bodyLarge: GoogleFonts.elMessiri(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: blackColour,
        ),
      ),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        color: Colors.transparent,
        iconTheme: IconThemeData(color: brimaryColour, size: 40),
        elevation: 0.0,
        centerTitle: true,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.shifting,
        selectedItemColor: blackColour,
        unselectedItemColor: Colors.white,
        backgroundColor: brimaryColour,
      ));
  static ThemeData darkTheme = ThemeData();
}
