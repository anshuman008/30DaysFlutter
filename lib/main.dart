import 'package:catalog_app/pages/login_page.dart';
import 'package:catalog_app/utils/route.dart';
import 'package:catalog_app/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:catalog_app/widgets/theme.dart';

void main() {
  runApp(MyApp());
}
// learn about context in flutter 
// there are 3 types of tree in flutter
// 1. widget tree
// 2. element tree
// 3. render tree
// context is a handle to the location of widget in widget tree
// context is a handle to the location of element in element tree
// context is a handle to the location of render object in render tree
// context is a handle to the location of widget in widget tree
// widget tree is immutable
// element tree is mutable
// render tree is mutable
// element tree is created from widget tree
// render tree is created from element tree


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: Myroute.homeRoute ,
      routes: {
        "/" :(context) => loginPage(),
       Myroute.homeRoute:(context) => HomePage(),
       Myroute.loginRoute :(context) => loginPage(),
      },
    );
  }
}
