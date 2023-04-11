import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('catalog App', style: TextStyle(color: Colors.white70,fontSize: 20,)),
      ),
      body: Container(
          child: Center(child: Text('WECOME GUYS to $days challenge'))),
      drawer: Drawer(),
    );
  }
}
