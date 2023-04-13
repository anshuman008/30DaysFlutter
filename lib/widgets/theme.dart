import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.deepPurple,
        primaryTextTheme: GoogleFonts.latoTextTheme(),
        appBarTheme: AppBarTheme(
            color: Colors.white,
            elevation: 0.0,
            iconTheme: IconThemeData(color: Colors.black),
            titleTextStyle: TextStyle(color: Colors.black, fontSize: 20)),
        fontFamily: GoogleFonts.poppins().fontFamily,
      );
  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
      );

      // colors
 Color creamColor = Color(0xfff5f5f5);
 Color darkBluishColor = Color(0xff403b58);
}

// colors

