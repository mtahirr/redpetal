import 'package:flutter/material.dart';
import 'package:redpetal/Screens/Settings.dart';
import 'package:redpetal/Screens/history.dart';
import 'package:redpetal/Screens/wallet.dart';

import '../widgets/backButton.dart';
import 'EditProfile.dart';

class Profile extends StatelessWidget {
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
                  'الحساب',
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
            CircleAvatar(
              radius: 80,
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EditProfile(),
                      ));
                },
                child: profileRow('assets/User_t.png', 'المعلومات الشخصية')),
            SizedBox(
              height: 20,
            ),
            InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HistoryPage(),
                      ));
                },
                child: profileRow('assets/s_History.png', 'الطلبات السابقة')),
            SizedBox(
              height: 20,
            ),
            InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Wallet(),
                      ));
                },
                child: profileRow('assets/Wallet.png', 'المحفظة')),
            SizedBox(
              height: 20,
            ),
            InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Settings(),
                      ));
                },
                child: profileRow('assets/Settings.png', 'الأعدادات')),
            SizedBox(
              height: 20,
            ),
            InkWell(
                onTap: () {}, child: profileRow('assets/Help.png', 'المساعدة')),
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
