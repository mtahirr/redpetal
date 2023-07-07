import 'package:flutter/material.dart';

import '../../Utlis/color..dart';

class TextinRow extends StatelessWidget {
  String title1, title2;
  TextinRow({this.title1, this.title2});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title2, style: const TextStyle(fontSize: 16, color: Colors.black)),
        Text(title1, style: TextStyle(fontSize: 16, color: RC.primary)),
      ],
    );
  }
}
