// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:app/components/rounded_button.dart';
import 'package:app/components/rounded_password_field.dart';
import 'package:flutter/material.dart';
import 'package:app/components/forgot_password.dart';
import 'package:app/components/rounded_input_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RoundedInputField(
              hintText: "Username",
              onChanged: (String value) {},
            ),
            RoundedPasswordField(
              onChanged: (String value) {},
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {},
            ),
            ForgotPassword(
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
