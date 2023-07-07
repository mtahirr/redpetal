import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// ignore: must_be_immutable
class MytextField extends StatelessWidget {
  String text, image;
  MytextField({this.text, this.image});
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: TextFormField(
        textAlign: TextAlign.right,
        decoration: InputDecoration(
          suffixIcon: Padding(
            padding: const EdgeInsets.all(14.0),
            child: SvgPicture.asset(
              image,
            ),
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(width: 0)),
          labelText: text,
          labelStyle: TextStyle(
            fontSize: 16,
          ),
          contentPadding: EdgeInsets.only(
            top: 0,
            right: 15,
          ),
        ),
      ),
    );
  }
}
