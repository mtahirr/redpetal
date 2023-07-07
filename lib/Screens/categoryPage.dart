import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:redpetal/Screens/subCategory.dart';

import '../Utlis/color..dart';
import '../widgets/backButton.dart';
import 'cart.dart';

class CategoryPage extends StatefulWidget {
  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  List<String> catgory = [
    'العيد',
    'عيد ميلاد',
    'التخرج',
    'المولود',
    'الخطوبة',
    'الزواج',
  ];
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
    'assets/cat1.png',
    'assets/cat2.png',
    'assets/cat3.png',
    'assets/cat5.png',
    'assets/cat6.png',
    'assets/cat7.png',
    'assets/cat8.png',
    'assets/cat9.png',
  ];
  int selected = 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        width: double.infinity,
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
                            color:
                                selected == i ? RC.primary : Colors.transparent,
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
              height: 10,
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(12),
                child: new MasonryGridView.count(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 3,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  itemCount: imageList.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SubCategoryPage(),
                            ));
                      },
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
                                    image: AssetImage(imageList[index]),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Text(
                                  catgoryName[index],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                )
                              ])),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
