// ignore_for_file: prefer_const_constructors

import 'package:app/home_screen.dart';
import 'package:app/services_screen.dart';
import 'package:app/transaction_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int _currentIndex = 0;

  var pages = [
    HomeScreen(),
    TransactionScreen(),
    ServicesScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: pages[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        // showUnselectedLabels: false,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.transform_rounded),
            label: "Transfer",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_repair_service_outlined),
            label: "Services",
          ),
        ],
        currentIndex: _currentIndex,
        onTap: _onSelectedItem,
      ),
    );
  }

  void _onSelectedItem(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
