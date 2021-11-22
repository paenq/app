// ignore_for_file: prefer_const_constructors

import 'package:app/components/text_field_container.dart';
import 'package:flutter/material.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: Color(0xFF000000),
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: Color(0xFF000000),
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
