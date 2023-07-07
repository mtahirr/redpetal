import 'package:flutter/material.dart';

import 'package:redpetal/widgets/button.dart';
import 'package:redpetal/widgets/buttonBorder.dart';

import 'package:redpetal/widgets/textField.dart';

import '../Utlis/color..dart';
import '../widgets/backButton.dart';
import 'confirmPassword.dart';

class ForgetPassword extends StatelessWidget {
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
                        fontSize: 17,
                      ),
                    ),
                    BackBtn()
                  ],
                ),
                SizedBox(
                  height: 100,
                ),
                Image(image: AssetImage('assets/letter.png')),
                MytextField(
                  text: 'البريد الألكتروني',
                  image: 'assets/Message.svg',
                ),
                SizedBox(
                  height: 15,
                ),
                MyButton(
                    name: 'ارسال كلمة السر',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ConfirmPassword(),
                          ));
                    }),
                SizedBox(
                  height: 20,
                ),
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
