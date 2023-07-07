import 'package:flutter/material.dart';
import 'package:redpetal/Screens/forgetPassword.dart';
import 'package:redpetal/Utlis/color..dart';
import 'package:redpetal/widgets/button.dart';

import '../widgets/backButton.dart';

class Prices extends StatefulWidget {
  @override
  State<Prices> createState() => _PricesState();
}

class _PricesState extends State<Prices> {
  bool mada = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                  'انشاء حساب',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                BackBtn()
              ],
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, i) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Icon(Icons.star, size: 40, color: RC.primary),
                            Text('الباقة السنوية'),
                            Text(
                              'باقة ال12 شهر',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: RC.lightGrey),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text('الباقة السنوية'),
                                Text(
                                  'باقة ال12 شهر',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: RC.lightGrey),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'ريال/شهر',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: RC.lightGrey),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  '83',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: RC.lightGrey),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'سنوية',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: RC.primary),
                ),
                Row(
                  children: [
                    Text(
                      'شهور',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: RC.primary),
                    ),
                    Text(
                      '6',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: RC.primary),
                    ),
                  ],
                ),
                SizedBox(
                  width: 15,
                ),
                Row(
                  children: [
                    Text(
                      'شهور',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: RC.primary),
                    ),
                    Text(
                      '3',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: RC.primary),
                    ),
                  ],
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'الخدمات',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: RC.primary),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  myContainer(),
                  myContainer(),
                  myContainer(),
                  Text(
                    'خدمة عملاء',
                    textAlign: TextAlign.right,
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  myContainer(),
                  SizedBox(
                    width: 65,
                  ),
                  myContainer(),
                  SizedBox(
                    width: 70,
                  ),
                  myContainer(),
                  Text(
                    'عرض الأحصائيات في لوحة التحكم',
                    textAlign: TextAlign.right,
                    style: TextStyle(fontSize: 10, color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  myContainer(),
                  SizedBox(),
                  myContainer(),
                  SizedBox(
                    width: 80,
                  ),
                  Text(
                    'الحصول علي عمولة أقل',
                    textAlign: TextAlign.right,
                    style: TextStyle(fontSize: 10, color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  myContainer(),
                  SizedBox(
                    width: 1,
                  ),
                  myContainer(),
                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    'عرض اكثر من 100 منتج',
                    textAlign: TextAlign.right,
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  myContainer(),
                  SizedBox(),
                  SizedBox(),
                  Text(
                    'أظهار منتجاتك في قائمة الأعلى تقييماً',
                    textAlign: TextAlign.right,
                    style: TextStyle(fontSize: 10, color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  myContainer(),
                  SizedBox(),
                  SizedBox(),
                  Text(
                    'نسبة ظهورك في البحث أعلي',
                    textAlign: TextAlign.right,
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
                ],
              ),
            ),
            Spacer(),
            MyButton(
              name: 'اختر الباقة',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ForgetPassword(),
                    ));
              },
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }

  Widget myContainer() {
    return Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(border: Border.all(color: RC.primary)),
      child: Checkbox(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(1),
            side: BorderSide(color: RC.primary),
          ),
          // tristate: true,
          side: BorderSide(color: RC.primary),
          checkColor: RC.primary,
          activeColor: Colors.white,
          value: mada,
          onChanged: (value) {
            setState(() {
              mada = value;
            });
          }),
    );
  }
}
