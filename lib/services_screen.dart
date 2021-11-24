// ignore_for_file: prefer_const_constructors

import 'package:app/components/services_options.dart';
import 'package:flutter/material.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Container(
              child: GridView.count(
                crossAxisCount: 4,
                children: [
                  Options(
                    press: () {},
                    text: 'Cash-in',
                    icon: Icons.lock,
                  ),
                  Options(
                    press: () {},
                    text: 'aw',
                    icon: Icons.lock,
                  ),
                  Options(
                    press: () {},
                    text: 'aw',
                    icon: Icons.lock,
                  ),
                  Options(
                    text: '',
                    press: () {},
                    icon: Icons.lock,
                  ),
                  Options(
                    text: '',
                    press: () {},
                    icon: Icons.lock,
                  ),
                  Options(
                    text: '',
                    press: () {},
                    icon: Icons.lock,
                  ),
                  Options(
                    text: '',
                    press: () {},
                    icon: Icons.lock,
                  ),
                  Options(
                    text: '',
                    press: () {},
                    icon: Icons.lock,
                  ),
                  Options(
                    text: '',
                    press: () {},
                    icon: Icons.lock,
                  ),
                  Options(
                    text: '',
                    press: () {},
                    icon: Icons.lock,
                  ),
                  Options(
                    text: '',
                    press: () {},
                    icon: Icons.lock,
                  ),
                  Options(
                    text: '',
                    press: () {},
                    icon: Icons.lock,
                  ),
                ],
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  scale: 2.2,
                  alignment: Alignment.bottomCenter,
                  image: AssetImage(
                    'assets/images/under_construction.png',
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
