// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print, prefer_typing_uninitialized_variables, non_constant_identifier_names, unrelated_type_equality_checks

import 'package:app/components/home_page.dart';
import 'package:app/components/rounded_button.dart';
import 'package:app/components/rounded_password_field.dart';
import 'package:flutter/material.dart';
import 'package:app/components/forgot_password.dart';
import 'package:app/components/rounded_input_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  late String _password;
  late String _username;

  late String value;
  bool login = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Color(0xFF202C38),
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Image.asset('assets/images/main_logo.png'),
              SizedBox(height: 144),
              RoundedInputField(
                hintText: "Username",
                onChanged: (admin) => _username = value,
              ),
              RoundedPasswordField(
                onChanged: (admin) => _password = value,
              ),
              RoundedButton(
                text: "LOGIN",
                press: () {
                  final form = _formKey.currentState;
                  form!.save();
                  if (form.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return HomePage();
                        },
                      ),
                    );
                    print("$_username $_password");
                  }
                },
              ),
              ForgotPassword(
                press: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  void incorrectPassword() {
    late String text = 'Incorrect Password';
    late SnackBar snackBar = SnackBar(content: Text(text));

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
