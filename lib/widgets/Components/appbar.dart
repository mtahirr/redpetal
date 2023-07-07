import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Utlis/color..dart';

class AppBarr extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 1;

    return AppBar(
      elevation: 0,
      leading: Expanded(
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: RC.primary,
              child: const Center(
                child: Icon(
                  CupertinoIcons.pen,
                  color: Colors.white,
                ),
              ),
            ),

            // Text('تعديل', style: TextStyle(color: Colors.black))
          ],
        ),
      ),
      actions: [
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            width: width * 0.13,
            decoration: BoxDecoration(
                color: RC.bg_clr, borderRadius: BorderRadius.circular(10)),
            child: Icon(Icons.arrow_forward_ios, color: RC.primary),
          ),
        )
      ],
      title: Padding(
        padding: const EdgeInsets.only(right: 70),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text('تعديل', style: TextStyle(color: Colors.black)),
            Text(
              'مراجعة البيانات',
              style: TextStyle(fontSize: 17, color: Colors.black),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white.withOpacity(0.2),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
