import 'package:flutter/material.dart';

import '../../Utlis/color..dart';

class RoundedButton extends StatelessWidget {
  VoidCallback onPressed;
  RoundedButton({this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
            color: RC.primary, borderRadius: BorderRadius.circular(15)),
        child: const Center(
          child: Text(
            'اكمال عملية الشراء',
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class RoundedButton2 extends StatelessWidget {
  VoidCallback onPressed;
  RoundedButton2({this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: RC.primary)),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Icon(Icons.apple),
              Text(
                'Google Pay',
                style: TextStyle(fontSize: 25),
              ),
              Text(
                'ا',
                style: TextStyle(fontSize: 30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
