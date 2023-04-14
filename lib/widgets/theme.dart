import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(

      cardColor: Colors.white,
    canvasColor: MyTheme().creamColor,
    hintColor:   MyTheme().darkBluishColor,
     hoverColor:   MyTheme().darkBluishColor,
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
    cardColor: Colors.black,
    canvasColor: MyTheme().darkCreamColor,
    hintColor: Color.fromRGBO(99, 102, 241, 1),
    hoverColor: Colors.white,
        appBarTheme: AppBarTheme(
            color: Colors.black,
            elevation: 0.0,
            iconTheme: IconThemeData(color: Colors.white),
            titleTextStyle: TextStyle(color: Colors.white, fontSize: 20)),
              fontFamily: GoogleFonts.poppins().fontFamily,
      );

  // colors
  Color creamColor = Color(0xfff5f5f5);
  Color darkBluishColor = Color(0xff403b58);
  Color lightBluishColor = Color.fromRGBO(99, 102, 241, 1);
  Color darkCreamColor = Vx.gray900;
}

// colors

