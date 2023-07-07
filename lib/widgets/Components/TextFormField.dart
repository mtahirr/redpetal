import 'package:flutter/material.dart';

import '../../Utlis/color..dart';

class ConstTextFormField extends StatelessWidget {
  String hint, label;
  Widget icon;
  ConstTextFormField({this.hint, this.label, this.icon});

  @override
  FocusNode focusNode = FocusNode();
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: TextFormField(
        focusNode: focusNode,
        // onTapOutside: (value) {
        //   focusNode.unfocus();
        // },
        decoration: InputDecoration(
            suffixIcon: Padding(
              padding: const EdgeInsets.all(3.0),
              child: icon,
            ),
            hintText: hint,
            labelText: label,
            labelStyle: TextStyle(color: RC.primary),
            hintTextDirection: TextDirection.rtl,
            focusColor: RC.primary,
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: RC.primary,
                ),
                borderRadius: BorderRadius.circular(15)),
            border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: RC.primary,
                ),
                borderRadius: BorderRadius.circular(15))),
      ),
    );
  }
}

class ConstTextFormField2 extends StatelessWidget {
  String hint, label;
  Widget icon;
  ConstTextFormField2({this.hint, this.label, this.icon});

  @override
  FocusNode focusNode = FocusNode();
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: TextFormField(
        focusNode: focusNode,
        // onTapOutside: (value) {
        //   focusNode.unfocus();
        // },
        decoration: InputDecoration(
            suffixIcon: Padding(
              padding: const EdgeInsets.all(3.0),
              child: icon,
            ),
            hintText: hint,
            labelText: label,
            labelStyle: TextStyle(color: Colors.grey),
            hintTextDirection: TextDirection.rtl,
            focusColor: Colors.grey,
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(15)),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(15))),
      ),
    );
  }
}
