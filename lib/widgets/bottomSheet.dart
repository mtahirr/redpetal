import 'package:flutter/material.dart';

import '../Utlis/color..dart';
import 'button.dart';

Future bottomSheet(
  BuildContext context,
) {
  return showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          color: Color(0xff737373),
          height: MediaQuery.of(context).size.height * 0.3,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 40,
                    ),
                    Text(
                      'اضافة كرت',
                      style: TextStyle(
                        fontSize: 20,
                        color: RC.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: 30,
                        height: 30,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: RC.primary,
                            borderRadius: BorderRadius.circular(30)),
                        child: Icon(
                          Icons.close_rounded,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextFormField(
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 0)),
                      labelText: 'اكتب رسالتك هنا',
                      labelStyle: TextStyle(
                        color: RC.primary,
                      ),
                      contentPadding: EdgeInsets.only(
                        top: 0,
                        right: 15,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                MyButton(
                  onPressed: () {},
                  name: 'تأكيد الكرت',
                )
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            ),
          ),
        );
      });
}
