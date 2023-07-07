import 'package:flutter/material.dart';

import 'package:redpetal/Screens/SignUp.dart';
import 'package:redpetal/Screens/homePage.dart';
import 'package:redpetal/main.dart';
import 'package:redpetal/widgets/button.dart';
import 'package:redpetal/widgets/buttonBorder.dart';
import 'package:redpetal/widgets/navigation.dart';

import '../Utlis/color..dart';
import '../widgets/backButton.dart';

import '../widgets/password.dart';

class ConfirmCode extends StatefulWidget {
  @override
  State<ConfirmCode> createState() => _ConfirmCodeState();
}

class _ConfirmCodeState extends State<ConfirmCode> {
  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
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
                      'اعادة تعيين كلمة السر',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    BackBtn()
                  ],
                ),
                SizedBox(
                  height: 100,
                ),
                Image(image: AssetImage('assets/l_lock.png')),
                SizedBox(
                  height: 10,
                ),
                PasswordField(
                  text: 'كلمة السر الجديدة',
                ),
                SizedBox(
                  height: 10,
                ),
                PasswordField(
                  text: 'تأكيد كلمة السر',
                ),
                SizedBox(
                  height: 10,
                ),
                MyButton(
                    name: 'حفظ كلمة السر',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BottomNavigationExample(),
                          ));
                    }),
                Spacer(),
                btn(txt: 'تسجيل الدخول', color: RC.primary),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
