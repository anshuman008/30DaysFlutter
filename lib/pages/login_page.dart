import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class loginPage extends StatelessWidget {
  const loginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(children: [
          Image.asset(
            "assets/images/login_image.png",
            fit: BoxFit.cover,
          ),
          SizedBox(height: 20.0),
          Text("Welcome",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              )),
          SizedBox(height: 20.0),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter username",
                    labelText: "Username",
                    // labelStyle: TextStyle(color: Colors.black)
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter password",
                    labelText: "Password",
                    // labelStyle: TextStyle(color: Colors.black)
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            child: Text("Login"),
            style: TextButton.styleFrom(
              minimumSize: Size(150, 40),
            ),
            onPressed: () {
              Navigator.pushNamed(context, "/home");
            },
          )
        ]),
      ),
    );
  }
}
