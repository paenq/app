// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 250, horizontal: 25),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(bottom: 20),
              child: Text(
                'Welcome \nBack',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(40),
                ),
                hintText: 'Username',
                hintStyle: TextStyle(color: Colors.white),
                fillColor: Color(0xFF4E5CA3),
                filled: true,
              ),
            ),
            Padding(padding: EdgeInsets.all(10)),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(40),
                ),
                hintText: 'Password',
                hintStyle: TextStyle(color: Colors.white),
                fillColor: Color(0xFF4E5CA3),
                filled: true,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              width: double.infinity,
              child: GestureDetector(
                child: Text(
                  'Forgot Password?',
                  textAlign: TextAlign.right,
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () => print('Forgot password button was clicked'),
              ),
            ),
            SizedBox(
              width: 100,
              child: ElevatedButton(
                child: Text('Login', style: TextStyle(fontSize: 18)),
                onPressed: () {
                  print('Logging in');
                },
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
            ),
          ],
        ),
      ),
    );
  }
}
