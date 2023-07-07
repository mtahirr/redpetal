import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:redpetal/Screens/productPage.dart';
import 'package:redpetal/widgets/buttonBorder.dart';

import '../Utlis/color..dart';
import '../widgets/backButton.dart';
import '../widgets/button.dart';
import 'View/Screen2.dart';
import 'cart.dart';

class SubCategoryPage extends StatefulWidget {
  @override
  State<SubCategoryPage> createState() => _SubCategoryPageState();
}

class _SubCategoryPageState extends State<SubCategoryPage> {
  List<String> catgory = [
    'العيد',
    'عيد ميلاد',
    'التخرج',
    'المولود',
    'الخطوبة',
    'الزواج',
  ];
  arabic _selectedvalues = arabic.a;
  bool mada = false;
  List<String> catgoryName = [
    'ستاند ورد',
    'بوكس ورد',
    'باقات الورد الطبيعي',
    'كيكة',
    'فاسات ورد  طبيعي',
    ' بالون',
    'هدايا',
    'تنسيق حفلة عيد ميلاد'
  ];
  List imageList = [
    'assets/small card.png',
    'assets/small card2.png',
    'assets/small card3.png',
    'assets/small card4.png',
  ];
  int selected = 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        width: double.infinity,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Text('الأقسام')],
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
                          onTap: () {
                            setState(() {
                              selected = i;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                              color: selected == i
                                  ? RC.primary
                                  : Colors.transparent,
                              border: Border.all(color: RC.primary),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                catgory[i],
                                style: TextStyle(
                                  fontSize: 16,
                                  color:
                                      selected == i ? Colors.white : RC.primary,
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                      child: btn(
                    onpress: () {
                      bottomSheet1(context);
                    },
                    txt: 'رتب حسب',
                  )),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: btn(
                    onpress: () {
                      bottomSheet(context);
                    },
                    txt: 'التصنيف',
                  )),
                ],
              ),
              Container(
                margin: EdgeInsets.all(12),
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
                          borderRadius: BorderRadius.all(Radius.circular(12))),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => ProductPage(),
                                        ));
                                  },
                                  child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 5, vertical: 5),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: RC.bg_clr,
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.add,
                                          size: 20,
                                          color: RC.primary,
                                        ),
                                      )),
                                ),
                                Icon(Icons.favorite_border)
                              ]),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
      ),
    );
  }

  bottomSheet(
    BuildContext context,
  ) {
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            color: Color(0xff737373),
            height: MediaQuery.of(context).size.height * 0.7,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 40,
                      ),
                      Text(
                        'تصنيف',
                        style: TextStyle(
                          fontSize: 16,
                          color: RC.primary,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
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
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  myRow('باقات ورد'),
                  SizedBox(
                    height: 5,
                  ),
                  myRow('بوكس ورد'),
                  SizedBox(
                    height: 5,
                  ),
                  myRow('ستاند ورد'),
                  SizedBox(
                    height: 5,
                  ),
                  myRow('فاسات ورد  طبيعي'),
                  SizedBox(
                    height: 5,
                  ),
                  myRow('كيكة'),
                  SizedBox(
                    height: 5,
                  ),
                  myRow('باقات ورد'),
                  SizedBox(
                    height: 5,
                  ),
                  myRow('حلا'),
                  SizedBox(
                    height: 5,
                  ),
                  myRow('تنسيق  حفلة عيد ميلاد'),
                  SizedBox(
                    height: 5,
                  ),
                  myRow('هدايا'),
                  SizedBox(
                    height: 5,
                  ),
                  myRow(' بالون'),
                  SizedBox(
                    height: 20,
                  ),
                  MyButton(
                    onPressed: () {},
                    name: 'تأكيد ',
                  )
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
            ),
          );
        });
  }

  bottomSheet1(
    BuildContext context,
  ) {
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            color: Color(0xff737373),
            height: MediaQuery.of(context).size.height * 0.5,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 40,
                      ),
                      Text(
                        'رتب حسب',
                        style: TextStyle(
                          fontSize: 16,
                          color: RC.primary,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
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
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: RadioListTile<arabic>(
                        activeColor: RC.primary,
                        title: Text('الأكثر مبيعاً'),
                        value: arabic.a,
                        groupValue: _selectedvalues,
                        onChanged: (value) {
                          setState(() {
                            _selectedvalues = value;
                          });
                        }),
                  ),
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: RadioListTile<arabic>(
                        title: Text('الأعلى تقييماً'),
                        value: arabic.b,
                        groupValue: _selectedvalues,
                        onChanged: (value) {
                          setState(() {
                            _selectedvalues = value;
                            print(_selectedvalues);
                          });
                        }),
                  ),
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: RadioListTile<arabic>(
                        title: Text('من أ الي ى'),
                        value: arabic.c,
                        groupValue: _selectedvalues,
                        onChanged: (value) {
                          print(value);
                          setState(() {
                            _selectedvalues = value;
                          });
                        }),
                  ),
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: RadioListTile<arabic>(
                        title: Text('من ى الي أ'),
                        value: arabic.c,
                        groupValue: _selectedvalues,
                        onChanged: (value) {
                          print(value);
                          setState(() {
                            _selectedvalues = value;
                          });
                        }),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MyButton(
                    onPressed: () {},
                    name: 'تأكيد ',
                  )
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
            ),
          );
        });
  }

  Widget myRow(
    String text,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          text,
          textAlign: TextAlign.right,
        ),
        SizedBox(
          width: 10,
        ),
        Container(
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
        ),
      ],
    );
  }
}
