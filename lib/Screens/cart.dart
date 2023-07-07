import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:redpetal/Screens/View/Home.dart';
import 'package:redpetal/Screens/aboutUs.dart';
import 'package:redpetal/Screens/checkout.dart';
import 'package:redpetal/Screens/help.dart';
import 'package:redpetal/main.dart';
import 'package:redpetal/widgets/button.dart';
import 'package:redpetal/widgets/buttonBorder.dart';

import '../Utlis/color..dart';
import '../widgets/backButton.dart';

class Cart extends StatefulWidget {
  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  Object _itemValue;

  var itemList = ['1stأيام', '2nd أيام', '3rd أيام', '4th أيام'];
  List imageList = [
    'assets/small card.png',
    'assets/small card2.png',
    'assets/small card3.png',
    'assets/small card4.png',
  ];
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
          Container(
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Help(),
                        ));
                  },
                  child: SvgPicture.asset('assets/help.svg'),
                ),
                SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AboutUs(),
                        ));
                  },
                  child: SvgPicture.asset('assets/info.svg'),
                ),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                        color: RC.bg_clr,
                        borderRadius: BorderRadius.circular(10)),
                    child: TextFormField(
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        isDense: true,
                        suffixIcon: Icon(Icons.search, color: RC.primary),
                        border: InputBorder.none,
                        hintText: "أبحث عن منتج",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    'حذف',
                    textAlign: TextAlign.right,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  SvgPicture.asset('assets/Delete.svg'),
                ],
              ),
              Text(
                'باقات الزهور',
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 15),
              )
            ],
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(children: [
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 2),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: RC.bg_clr,
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.remove,
                                          size: 20,
                                          color: RC.primary,
                                        ),
                                      )),
                                ),
                                Text(
                                  ' 1 ',
                                  style: TextStyle(fontSize: 16),
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 2),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: RC.primary,
                                      ),
                                      child: Center(
                                        child: Icon(Icons.add,
                                            size: 20, color: Colors.white),
                                      )),
                                ),
                              ]),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(),
                                child: Row(
                                  children: [
                                    Directionality(
                                      textDirection: TextDirection.rtl,
                                      child: DropdownButton(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          hint: Text(
                                            'أيام',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                color: RC.primary),
                                          ),
                                          underline: SizedBox(),
                                          icon: Container(
                                              width: 30,
                                              height: 29,
                                              decoration: BoxDecoration(
                                                  color: RC.bg_clr,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          30)),
                                              child: Icon(
                                                Icons.keyboard_arrow_down,
                                                color: Colors.white,
                                              )),
                                          value: _itemValue,
                                          onChanged: (value) {
                                            setState(() {
                                              _itemValue = value;
                                            });
                                          },
                                          items: itemList.map((value) {
                                            return DropdownMenuItem(
                                                value: value,
                                                child: Container(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Text(
                                                    value,
                                                    textAlign: TextAlign.end,
                                                  ),
                                                ));
                                          }).toList()),
                                    ),
                                  ],
                                ),
                              ),
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
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    'حذف',
                    textAlign: TextAlign.right,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  SvgPicture.asset('assets/Delete.svg'),
                ],
              ),
              Text(
                'الكروت ',
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 15),
              )
            ],
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(children: [
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 2),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: RC.bg_clr,
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.remove,
                                          size: 20,
                                          color: RC.primary,
                                        ),
                                      )),
                                ),
                                Text(
                                  ' 1 ',
                                  style: TextStyle(fontSize: 16),
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 2),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: RC.primary,
                                      ),
                                      child: Center(
                                        child: Icon(Icons.add,
                                            size: 20, color: Colors.white),
                                      )),
                                ),
                              ]),
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
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    'حذف',
                    textAlign: TextAlign.right,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  SvgPicture.asset('assets/Delete.svg'),
                ],
              ),
              Text(
                'منتجات ربما قد تعجبك ',
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 15),
              )
            ],
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 100,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imageList.length,
                itemBuilder: (c, i) {
                  return Container(
                      child: Image.asset(
                    imageList[i],
                  ));
                }),
          ),
          btn(
            txt: 'أضف الي مشترياتي',
          ),
          MyButton(
            name: 'الأنتقال الي الدفع',
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ));
            },
          )
        ],
      ),
    ));
  }
}
