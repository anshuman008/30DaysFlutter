import 'package:catalog_app/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  var thm = "light";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('catalog App',
            style: Theme.of(context).appBarTheme.titleTextStyle),
      ),
      body: Container(
          child: Center(child: Text('WECOME GUYS to $days challenge'))),
      drawer: MyDrawer(),
    );
  }
}
