// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SavingsAccount extends StatelessWidget {
  const SavingsAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFF202C38),
        image: DecorationImage(
          alignment: Alignment.bottomRight,
          image: AssetImage(
            'assets/images/mastercard.png',
          ),
        ),
      ),
      height: 220,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 10,
          top: 10,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/main_logo.png',
                      width: 225,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Image.asset(
                        'assets/images/chip.png',
                        height: 60,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                      ),
                      child: Text(
                        '0000 0020 1918 0018',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        top: 20,
                      ),
                      child: Text(
                        'Raphael A. Ungab         03/27',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
