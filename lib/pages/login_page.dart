import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  String name = "";
  bool changeButton = false;
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
          Text("Welcome $name",
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
                    ),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    }
                    // labelStyle: TextStyle(color: Colors.black)

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
          InkWell(
            onTap: () async {
              setState(() {
                changeButton = true;
              });
              await Future.delayed(Duration(seconds: 1));
                Navigator.pushNamed(context, "/home");
            },
            child: AnimatedContainer(
              duration: Duration(seconds: 1),
              width: changeButton ? 50 : 150,
              height: 50,
              alignment: Alignment.center,
              child: changeButton
                  ? Icon(
                      Icons.done,
                      color: Colors.white,
                    )
                  : Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(changeButton ? 50 : 8),
                color: Colors.blue,
              ),
            ),
          )
          // ElevatedButton(
          //   child: Text("Login"),
          //   style: TextButton.styleFrom(
          //     minimumSize: Size(150, 40),
          //   ),
          //   onPressed: () {
          //     Navigator.pushNamed(context, "/home");
          //   },
          // )
        ]),
      ),
    );
  }
}
