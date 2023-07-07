import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:redpetal/Screens/searchPage.dart';

import '../Utlis/color..dart';
import '../widgets/backButton.dart';

import 'cart.dart';

class HistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(children: [
              SizedBox(height: 40),
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
                        child: SvgPicture.asset('assets/Bag.svg'),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SearchPage(),
                              ));
                        },
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 8),
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
              SizedBox(height: 10),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Container(
                  padding: EdgeInsets.only(
                    left: 10,
                  ),
                  decoration: BoxDecoration(),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "ريال",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(color: RC.primary),
                                      ),
                                      Text(
                                        " 24",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(color: RC.primary),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'باقة ورد',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: RC.primary),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(children: [
                                    Text('باقة'),
                                    Text('1 -'),
                                    Text(' الحجم كبير')
                                  ]),
                                  Text('متجر زهوري'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Image.asset('assets/small card.png'),
                    ],
                  ),
                ),
              ),
            ])));
  }
}
