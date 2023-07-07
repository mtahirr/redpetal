import 'package:flutter/material.dart';
import 'package:redpetal/Screens/profile.dart';

import '../Utlis/color..dart';
import '../widgets/backButton.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 30,
                ),
                Text(
                  'الأعدادات',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                BackBtn()
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(children: [
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Profile(),
                            ));
                      },
                      child: profileRow('assets/User_t.png', 'الحساب الشخصي')),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'تعديل الحساب الشخصي',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                color: RC.primary,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Image.asset(
                            'assets/Edit.png',
                            height: 30,
                          )
                        ],
                      )),
                ]),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  Widget profileRow(String image, name) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          name,
          textAlign: TextAlign.right,
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(
          width: 20,
        ),
        Image.asset(
          image,
          height: 30,
        )
      ],
    );
  }
}
