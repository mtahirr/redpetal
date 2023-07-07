import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:redpetal/widgets/backButton.dart';

import '../Utlis/color..dart';
import '../widgets/button.dart';
import '../widgets/buttonBorder.dart';
import 'cart.dart';

class Favourite extends StatelessWidget {
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
        padding: EdgeInsets.symmetric(horizontal: 10),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
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
                                  bottomSheet(context);
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
                              Icon(
                                Icons.favorite,
                                color: RC.primary,
                              )
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
            height: MediaQuery.of(context).size.height * 0.3,
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
                        'تم اضافة المنتج الي قائمة المشتريات',
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
                    height: 20,
                  ),
                  btn(
                    txt: 'اكمل التسوق',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MyButton(
                    onPressed: () {},
                    name: 'الذهاب الي المشتريات',
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
}
