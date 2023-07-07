import 'package:flutter/material.dart';
import 'package:redpetal/widgets/backButton.dart';
import 'package:redpetal/widgets/buttonBorder.dart';

import '../Utlis/color..dart';
import '../widgets/button.dart';
import 'cart.dart';

class NotificationsPage extends StatefulWidget {
  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              'assets/background.png',
            ),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: 40,
            ),
            Container(
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Cart(),
                          ));
                    },
                    child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: RC.bg_clr,
                        ),
                        child: Image(
                          image: AssetImage('assets/s_Bag.png'),
                          height: 25,
                        )),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 8),
                          decoration: BoxDecoration(
                              color: RC.bg_clr,
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "أبحث عن منتج",
                                textAlign: TextAlign.right,
                                style: TextStyle(color: RC.primary),
                              ),
                              Icon(
                                Icons.search,
                                color: RC.primary,
                              )
                            ],
                          )),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  BackBtn(),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text('04:00 م  23/02/2023'),
                          ],
                        ),
                        Text(
                          'تم استلام الطلب من قبل المتجر',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    MyButton(
                      onPressed: () {},
                      name: 'تقييم المتجر',
                    )
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
