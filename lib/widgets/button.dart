import 'package:flutter/material.dart';

import '../Utlis/color..dart';

class MyButton extends StatelessWidget {
  final String name;
  final VoidCallback onPressed;

  MyButton({
    this.name,
    this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 5),
              primary: RC.primary,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          onPressed: onPressed,
          child: Text(
            name,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          )),
    );
  }
}
