import 'package:flutter/material.dart';

import '../Utlis/color..dart';

// ignore: must_be_immutable
class PasswordField extends StatefulWidget {
  // final TextEditingController controller;
  String text;
  PasswordField({
    this.text,
    // required this.controller
  });

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: TextFormField(
        obscureText: obscureText,
        textAlign: TextAlign.right,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  obscureText = !obscureText;
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Icon(
                  obscureText ? Icons.visibility : Icons.visibility_off,
                  color: RC.primary,
                  size: 25,
                ),
              )),
          labelText: widget.text,
          labelStyle: TextStyle(fontSize: 16),
          contentPadding: EdgeInsets.only(top: 0, right: 15),
        ),
      ),
    );
  }
}
