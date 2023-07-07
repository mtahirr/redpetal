import 'package:flutter/material.dart';

import '../Utlis/color..dart';
import '../widgets/backButton.dart';

class Stores extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Container(
              child: Row(
                children: [
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: RC.bg_clr,
                      ),
                      child: Image(
                        image: AssetImage('assets/s_Bag.png'),
                        height: 25,
                      )),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //       builder: (context) => SearchPage(),
                        //     ));
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
                  BackBtn(),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
