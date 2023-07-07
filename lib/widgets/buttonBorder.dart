import 'package:flutter/material.dart';

import '../Utlis/color..dart';

class btn extends StatelessWidget {
  final String txt;
  final Color color;
  final onpress;
  const btn({this.txt, this.color, this.onpress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 5),
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: RC.primary),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            txt,
            style: TextStyle(
              fontSize: 20,
              color: RC.primary,
            ),
          ),
        ),
      ),
    );
  }
}
