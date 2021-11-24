import 'package:flutter/material.dart';

class Options extends StatelessWidget {
  final String text;
  final Function press;
  final IconData icon;

  const Options({
    Key? key,
    required this.text,
    required this.press,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),
          border: Border.all(color: Colors.black, width: 2),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 50),
            Text(text),
          ],
        ),
      ),
      onTap: () {
        press();
      },
    );
  }
}
