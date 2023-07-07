import 'package:flutter/material.dart';

import '../Utlis/color..dart';

class BackBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: RC.bg_clr,
          ),
          child: Center(
            child: Icon(
              Icons.arrow_forward_ios,
              size: 20,
              color: RC.primary,
            ),
          )),
    );
  }
}
