import 'package:flutter/material.dart';

import 'package:redpetal/widgets/button.dart';
import 'package:redpetal/widgets/buttonBorder.dart';

import '../Utlis/color..dart';
import '../widgets/backButton.dart';
import '../widgets/otpInput.dart';
import 'confirmCode.dart';

class ConfirmPassword extends StatefulWidget {
  @override
  State<ConfirmPassword> createState() => _ConfirmPasswordState();
}

class _ConfirmPasswordState extends State<ConfirmPassword> {
  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();
  final TextEditingController _fieldThree = TextEditingController();
  final TextEditingController _fieldFour = TextEditingController();
  final TextEditingController _fieldFive = TextEditingController();
  final TextEditingController _fieldSix = TextEditingController();
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
                Text('برجاء ادخال الكود الذي تم ارسالة الي البريد الألكتروني'),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: OtpInput(_fieldOne, true),
                    ),
                    Expanded(
                      child: OtpInput(_fieldTwo, false),
                    ),
                    Expanded(
                      child: OtpInput(_fieldThree, false),
                    ),
                    Expanded(child: OtpInput(_fieldFour, false)),
                    Expanded(child: OtpInput(_fieldFive, false)),
                    Expanded(child: OtpInput(_fieldSix, false)),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Spacer(),
                MyButton(
                    name: 'ادخل الرمز',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ConfirmCode(),
                          ));
                    }),
                SizedBox(
                  height: 20,
                ),
                btn(txt: 'اعد ارسال الرمز', color: RC.primary),
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
