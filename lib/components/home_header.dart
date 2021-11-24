// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AccountDetails extends StatelessWidget {
  const AccountDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Text(
            "Bank of Stratton Oakmont",
            style: TextStyle(
              color: Colors.black,
              fontSize: 23,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/logo_head.png'),
            radius: 32,
          )
        ],
      ),
    );
  }
}
