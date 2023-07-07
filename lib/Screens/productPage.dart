import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:redpetal/Screens/store.dart';
import 'package:redpetal/widgets/backButton.dart';
import 'package:redpetal/widgets/bottomSheet.dart';
import 'package:redpetal/widgets/button.dart';
import 'package:redpetal/widgets/buttonBorder.dart';
import 'package:table_calendar/table_calendar.dart';

import '../Utlis/color..dart';
import 'cart.dart';

class ProductPage extends StatefulWidget {
  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  int _current = 0;
  int selected = 0;
  bool mada = false;
  List carouselData = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
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
  List<String> catgory = [
    'جميع النتائج',
    'الأعلى تقييماً',
    'الأثكر مبيعاً',
    'المتاجر',
    'المنتجات',
  ];
  CalendarFormat _calendarFormat = CalendarFormat.month;
  // DateTime _focusedDay = DateTime.now();
  // DateTime _selectedDay;
  DateTime today = DateTime.now();
  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
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
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Stores(),
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
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.3,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 2, vertical: 2),
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
                          padding:
                              EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: RC.primary,
                          ),
                          child: Center(
                            child:
                                Icon(Icons.add, size: 20, color: Colors.white),
                          )),
                    ),
                  ]),
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
                          color:
                              _current == value ? RC.primary : Colors.grey[400],
                        ),
                      );
                    }),
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 3, vertical: 3),
                      decoration: BoxDecoration(
                          color: RC.primary,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                          child: Icon(
                        Icons.favorite,
                        size: 20,
                        color: Colors.white,
                      )))
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 30,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: catgory.length,
                    itemBuilder: (c, i) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                              border: Border.all(color: RC.primary),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                catgory[i],
                                style: TextStyle(
                                  fontSize: 16,
                                  color: RC.primary,
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/Calendar.png'),
                  Text('مواعيد تسليم الطلب')
                ],
              ),
              SizedBox(
                height: 10,
              ),
              TableCalendar(
                firstDay: DateTime.utc(2010, 10, 16),
                lastDay: DateTime.utc(2030, 3, 14),
                focusedDay: today,
                // headerStyle: HeaderStyle(
                //   titleCentered: true,
                // ),
                onDaySelected: _onDaySelected,
                availableGestures: AvailableGestures.all,
                calendarFormat: _calendarFormat,
                onFormatChanged: (format) {
                  setState(() {
                    _calendarFormat = format;
                  });
                },
                selectedDayPredicate: (day) => isSameDay(day, today),
                calendarStyle: CalendarStyle(
                    selectedDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: RC.primary)),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/s_History.png'),
                  Text(
                    'وقت التوصيل',
                    textAlign: TextAlign.right,
                    style: TextStyle(),
                  )
                ],
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'من 11 صباحاً الي 6 مساءً',
                      textAlign: TextAlign.right,
                      style: TextStyle(color: RC.lightGrey),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 20,
                      height: 20,
                      decoration:
                          BoxDecoration(border: Border.all(color: RC.primary)),
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
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'من 5 مساءً الي 9 مساءً',
                      textAlign: TextAlign.right,
                      style: TextStyle(color: RC.lightGrey),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 20,
                      height: 20,
                      decoration:
                          BoxDecoration(border: Border.all(color: RC.primary)),
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
                    ),
                  ],
                ),
              ),
              Divider(
                color: RC.lightBlack,
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/Card.png'),
                  Text(
                    'إضافة كرت',
                    textAlign: TextAlign.right,
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'اضافة كرت',
                      textAlign: TextAlign.right,
                      style: TextStyle(color: RC.lightGrey),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 20,
                      height: 20,
                      decoration:
                          BoxDecoration(border: Border.all(color: RC.primary)),
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
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              MyButton(
                name: 'أضف الي العربة',
                onPressed: () {
                  bottomSheet(context);
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Text('منتجات مشابهة')],
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 170,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: imageList.length,
                    itemBuilder: (c, i) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: InkWell(
                            onTap: () {},
                            child: Container(
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
                                      image: AssetImage(imageList[i]),
                                      fit: BoxFit.contain,
                                    ),
                                  ),
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
                                      SizedBox(
                                        width: 10,
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
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )),
                      );
                    }),
              ),
              SizedBox(height: 10),
              btn(
                txt: 'اشتريهم سوياً',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
