// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;

  const RoundedButton({
    Key? key,
    required this.text,
    required this.press,
    this.color = Colors.green,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: TextButton(
        onPressed: () {
          press();
        },
        child: Text(
          text,
          style: TextStyle(color: textColor),
        ),
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
          ),
          padding: MaterialStateProperty.all(EdgeInsets.all(15)),
          elevation: MaterialStateProperty.all(0),
          backgroundColor: MaterialStateProperty.all(Color(0xFFFA6038)),
        ),
      ),
    );
  }
}
