import 'package:flutter/material.dart';
import 'package:redpetal/Screens/Settings.dart';
import 'package:redpetal/Screens/wallet.dart';

import '../Utlis/color..dart';
import '../widgets/backButton.dart';

import 'EditProfile.dart';

class Help extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        height: MediaQuery.of(context).size.height * 0.4,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Column(
                      children: [
                        Image.asset('assets/policy (5).png'),
                        Text('محادثة جديدة')
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Column(
                      children: [
                        Container(
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
                        Text('اغلاق')
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('بحاجة الي المساعدة؟'),
                ],
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    ' ارسل رسالتك لنا',
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'وسوف نتواصل معك في اقرب وقت',
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
              Spacer(),
              Directionality(
                textDirection: TextDirection.rtl,
                child: TextFormField(
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.send),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width: 0)),
                    labelText: 'اكتب رسالتك هنا',
                    contentPadding: EdgeInsets.only(
                      top: 0,
                      right: 15,
                    ),
                  ),
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          ),
        ),
      ),
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
                  'رفع شكوي',
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
            InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EditProfile(),
                      ));
                },
                child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        child: profileRow('assets/Dollar.png', 'خطة الدفع')))),
            SizedBox(
              height: 10,
            ),
            InkWell(
                onTap: () {},
                child: Card(
                    child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        child: profileRow(
                            'assets/policy (1).png', 'الشروط و الأحكام')))),
            SizedBox(
              height: 10,
            ),
            InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Wallet(),
                      ));
                },
                child: Card(
                    child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        child: profileRow(
                            'assets/policy (4).png', 'تواصل معنا')))),
            SizedBox(
              height: 10,
            ),
            InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Settings(),
                      ));
                },
                child: Card(
                    child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        child: profileRow('assets/Info.png', 'عن التطبيق')))),
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
