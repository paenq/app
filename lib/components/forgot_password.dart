// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  final Function press;
  const ForgotPassword({
    Key? key,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Forgot ',
          style: TextStyle(color: Colors.white),
        ),
        GestureDetector(
          onTap: () {
            press();
          },
          child: Text(
            'Password?',
            style: TextStyle(
              color: Colors.blue[400],
            ),
          ),
        ),
      ],
    );
  }
}
