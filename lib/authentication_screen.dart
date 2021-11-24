// ignore_for_file: prefer_const_constructors

import 'package:app/components/rounded_button.dart';
import 'package:app/login_screen.dart';
import 'package:flutter/material.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Color(0xFF202C38),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Image.asset('assets/images/main_logo.png'),
          SizedBox(height: 300),
          RoundedButton(
            text: "LOGIN",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginScreen();
                  },
                ),
              );
            },
          ),
          // RoundedButton(
          //   text: "LOGIN",
          //   press: () {},
          // ),
        ],
      ),
    );
  }
}
