// ignore_for_file: prefer_const_constructors

import 'package:app/components/home_header.dart';
import 'package:app/components/savings_account.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
          constraints: BoxConstraints(
            maxWidth: 632,
          ),
          child: CustomScrollView(
            // ignore: prefer_const_literals_to_create_immutables
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.transparent,
                automaticallyImplyLeading: false,
                title: AccountDetails(),
              ),
              SliverList(
                delegate: SliverChildListDelegate.fixed([
                  SizedBox(
                    height: 20,
                  ),
                  SavingsAccount(),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
