import 'package:flutter/material.dart';
import 'package:redpetal/Utlis/color..dart';
import 'package:redpetal/widgets/backButton.dart';

class AboutUs extends StatefulWidget {
  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 30,
                ),
                Text(
                  'عن التطبيق',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                BackBtn()
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '(ريد بيتال) منصة تسوق تربط بين أصحاب المتاجر الخاصة بالورود ',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                      'و الزهور والهداية في مكان  واحد بطريقة سهلة وذكية في جميع ارجاء '),
                  Text(
                    'المملكة العربية السعودية',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: RC.primary),
                  )
                ],
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'V1',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  ':اصدار التطبيق',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/road logo.png'),
                Text(
                  'تم تصميم وتطوير التطبيق بواسطة',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                )
              ],
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
