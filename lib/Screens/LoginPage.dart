import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:redpetal/Screens/SignUp.dart';
import 'package:redpetal/widgets/button.dart';
import 'package:redpetal/widgets/buttonBorder.dart';
import 'package:redpetal/widgets/password.dart';
import 'package:redpetal/widgets/textField.dart';

import '../Utlis/color..dart';
import '../widgets/backButton.dart';

class LoginPage extends StatelessWidget {
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
                      'تسجيل الدخول',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                    BackBtn()
                  ],
                ),
                SizedBox(
                  height: 100,
                ),
                MytextField(
                  text: 'رقم الهاتف او البريد الألكتروني',
                  image: 'assets/Message.svg',
                ),
                SizedBox(
                  height: 15,
                ),
                PasswordField(
                  text: 'كلمة السر',
                ),
                SizedBox(
                  height: 20,
                ),
                MyButton(
                    name: 'تسجيل الدخول',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUp(),
                          ));
                    }),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all()),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(FontAwesomeIcons.apple),
                      Text(
                        'تسجيل الدخول',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all()),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage(
                          'assets/Google.jpg',
                        ),
                        height: 25,
                      ),
                      Text(
                        'تسجيل الدخول',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                btn(txt: 'انشاء حساب', color: RC.primary),
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
