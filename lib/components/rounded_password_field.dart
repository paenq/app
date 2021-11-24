// ignore_for_file: prefer_const_constructors

import 'package:app/components/text_field_container.dart';
import 'package:flutter/material.dart';

class RoundedPasswordField extends StatefulWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<RoundedPasswordField> createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  bool hidePassword = true;
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        obscureText: hidePassword,
        onChanged: widget.onChanged,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: Color(0xFF000000),
          ),
          suffixIcon: GestureDetector(
            onTap: _togglePassword,
            child: Icon(
              Icons.visibility,
              color: Color(0xFF000000),
            ),
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }

  void _togglePassword() {
    hidePassword = !hidePassword;
    setState(() {});
  }
}
