import 'package:flutter/material.dart';
import 'package:redpetal/widgets/backButton.dart';
import 'package:redpetal/widgets/findPlace.dart';

import '../Utlis/color..dart';
import '../widgets/searchProduct.dart';

class SearchPage extends StatefulWidget {
  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  bool select = true;
  bool select1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            SizedBox(height: 10),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              SizedBox(
                width: 30,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        select1 = !select1;
                        select = false;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                      decoration: BoxDecoration(
                          border: Border.all(color: RC.primary),
                          borderRadius: BorderRadius.circular(5),
                          color: select1 ? RC.primary : Colors.grey[10]),
                      child: Center(
                          child: Text(
                        'بحث عن مكان',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15,
                            color: select1 ? Colors.white : RC.primary),
                      )),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        select = !select;
                        select1 = false;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                      decoration: BoxDecoration(
                          border: Border.all(color: RC.primary),
                          borderRadius: BorderRadius.circular(5),
                          color: select ? RC.primary : Colors.grey[10]),
                      child: Center(
                          child: Text(
                        'بحث عن منتج',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15,
                            color: select ? Colors.white : RC.primary),
                      )),
                    ),
                  ),
                ],
              ),
              BackBtn(),
            ]),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                  color: RC.bg_clr, borderRadius: BorderRadius.circular(10)),
              child: TextFormField(
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search, color: RC.primary),
                  border: InputBorder.none,
                  hintText: "أبحث عن منتج",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            select ? SearchForProduct() : FindPlace(),
          ],
        ),
      ),
    ));
  }
}
