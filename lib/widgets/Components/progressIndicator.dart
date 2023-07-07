import 'package:flutter/material.dart';

import '../../Utlis/color..dart';

class ProgressIndicatorComponent extends StatelessWidget {
  double value;
  ProgressIndicatorComponent({this.value});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: LinearProgressIndicator(
          backgroundColor: RC.bg_clr,
          color: RC.primary,
          minHeight: 50,
          value: value,
        ),
      ),
    );
  }
}

class RoundedLinearProgressIndicator extends StatelessWidget {
  double value;
  final double height;
  final double borderRadius;

  RoundedLinearProgressIndicator({
    this.value = 0,
    this.height = 20,
    this.borderRadius = 20,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 1,
            decoration: BoxDecoration(
              color: RC.bg_clr,
              borderRadius: BorderRadius.circular(borderRadius),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              width: MediaQuery.of(context).size.width * (value),
              decoration: BoxDecoration(
                color: RC.primary,
                borderRadius: BorderRadius.circular(borderRadius),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
