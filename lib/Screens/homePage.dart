import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:redpetal/Screens/Notification.dart';
import 'package:redpetal/Screens/productPage.dart';
import 'package:redpetal/Screens/searchPage.dart';

import '../Utlis/color..dart';
import 'cart.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _current = 0;
  List carouselData = [
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  ];
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  List imageList = [
    'assets/small card.png',
    'assets/small card2.png',
    'assets/small card3.png',
    'assets/small card4.png',
  ];
  Object _itemValue;
  var itemList = ['1stأيام', '2nd أيام', '3rd أيام', '4th أيام'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(),
                  child: Row(
                    children: [
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: DropdownButton(
                            borderRadius: BorderRadius.circular(10),
                            hint: Text(
                              'الرياض',
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
                                    borderRadius: BorderRadius.circular(30)),
                                child: Icon(
                                  Icons.keyboard_arrow_down,
                                  color: RC.primary,
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
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      value,
                                      textAlign: TextAlign.end,
                                    ),
                                  ));
                            }).toList()),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('توصيل الي'),
                    ],
                  ),
                ),
                Image.asset('assets/flag.png')
              ],
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
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
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
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NotificationsPage(),
                          ));
                    },
                    child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: RC.bg_clr,
                        ),
                        child: Icon(Icons.notifications,
                            size: 25, color: RC.primary)),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.18,
                      child: ClipRRect(
                        child: CarouselSlider(
                          options: CarouselOptions(
                            viewportFraction: 1.0,
                            enlargeCenterPage: false,
                            scrollPhysics: const BouncingScrollPhysics(),
                            // aspectRatio: 2.0,
                            onPageChanged: (index, reason) {
                              setState(() {
                                _current = index;
                              });
                            },
                          ),
                          items: carouselData
                              .map(
                                (item) => Image.network(
                                  item,
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                ),
                              )
                              .toList(),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: map<Widget>(carouselData, (value, url) {
                        return Container(
                          width: _current == value ? 5.0 : 5,
                          height: _current == value ? 20.0 : 20,
                          margin: EdgeInsets.symmetric(horizontal: 1),
                          decoration: BoxDecoration(
                            borderRadius: _current == value
                                ? BorderRadius.circular(20)
                                : BorderRadius.circular(20),
                            color: _current == value
                                ? RC.primary
                                : Colors.grey[400],
                          ),
                        );
                      }),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "الأقسام",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.15,
                      padding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                      color: Colors.white,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.03),
                          Container(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image(
                                image: AssetImage("assets/small card.png"),
                                height: 70,
                              ),
                              Text(
                                "باقات ورد",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          )),
                          Container(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image(
                                image: AssetImage("assets/small card2.png"),
                                height: 70,
                              ),
                              Text(
                                "كروت دعوة",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          )),
                          Container(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image(
                                image: AssetImage("assets/small card3.png"),
                                height: 70,
                              ),
                              Text(
                                "الأكثر مبيعاً",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          )),
                          Container(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image(
                                image: AssetImage("assets/small card4.png"),
                                height: 70,
                              ),
                              Text(
                                "الخصومات",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          )),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "المنتجات المميزة",
                          textAlign: TextAlign.right,
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 200,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: imageList.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12))),
                                child: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(12),
                                          topRight: Radius.circular(12)),
                                      child: Image(
                                        image: AssetImage(imageList[index]),
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        ProductPage(),
                                                  ));
                                            },
                                            child: Container(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 5, vertical: 5),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  color: RC.primary,
                                                ),
                                                child: Center(
                                                  child: Icon(Icons.add,
                                                      size: 18,
                                                      color: Colors.white),
                                                )),
                                          ),
                                          SizedBox(
                                            width: 40,
                                          ),
                                          Icon(
                                            Icons.favorite_border,
                                            color: RC.primary,
                                          )
                                        ]),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              'ريال',
                                              style:
                                                  TextStyle(color: RC.primary),
                                            ),
                                            Text(
                                              '  22',
                                              style:
                                                  TextStyle(color: RC.primary),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text("بوكية ورد"),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Row(
                                          children: [
                                            SizedBox(
                                              width: 40,
                                            ),
                                            Text(
                                              "بوكية ورد",
                                              style: TextStyle(),
                                            ),
                                            Text('1'),
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "المنتجات",
                          textAlign: TextAlign.right,
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      child: new MasonryGridView.count(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        crossAxisCount: 2,
                        crossAxisSpacing: 12,
                        mainAxisSpacing: 12,
                        itemCount: imageList.length,
                        itemBuilder: (context, index) {
                          return Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12))),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(12),
                                      topRight: Radius.circular(12)),
                                  child: Image(
                                    image: AssetImage(imageList[index]),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    ProductPage(),
                                              ));
                                        },
                                        child: Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 5, vertical: 5),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: RC.primary,
                                            ),
                                            child: Center(
                                              child: Icon(Icons.add,
                                                  size: 18,
                                                  color: Colors.white),
                                            )),
                                      ),
                                      Icon(
                                        Icons.favorite_border,
                                        color: RC.primary,
                                      )
                                    ]),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'ريال',
                                          style: TextStyle(color: RC.primary),
                                        ),
                                        Text(
                                          '  22',
                                          style: TextStyle(color: RC.primary),
                                        ),
                                      ],
                                    ),
                                    Text("بوكية ورد"),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "بوكية ورد",
                                          style: TextStyle(),
                                        ),
                                        Text('1'),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
