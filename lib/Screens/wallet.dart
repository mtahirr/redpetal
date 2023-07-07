import 'package:flutter/material.dart';
import 'package:redpetal/widgets/backButton.dart';

import '../Utlis/color..dart';
import '../widgets/button.dart';
import 'cart.dart';

class Wallet extends StatelessWidget {
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
            SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'ريال',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: RC.primary),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '1000',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: RC.primary),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'الرصيد في المحفظة',
                        style: TextStyle(fontSize: 15, color: RC.lightGrey),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Image(
                        image: AssetImage('assets/Wallet.png'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            MyButton(
              name: 'سحب الرصيد',
              onPressed: () {
                // Navigator.of(context).push(
                //     MaterialPageRoute(builder: (context) => CompleteOrder()));
              },
            ),
            Divider()
          ],
        ),
      ),
    );
  }
}
