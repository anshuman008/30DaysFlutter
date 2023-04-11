import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class loginPage extends StatelessWidget {
  const loginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child : Center(
        child: Text('LOGIN PAGE',
        style: TextStyle(color : Colors.blue, fontSize: 25,fontWeight: FontWeight.bold))
      )
 );
  }
}
