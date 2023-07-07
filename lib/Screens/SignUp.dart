import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:redpetal/Screens/prices.dart';
import 'package:redpetal/widgets/backButton.dart';
import 'package:redpetal/widgets/button.dart';
import 'package:redpetal/widgets/buttonBorder.dart';
import 'package:redpetal/widgets/password.dart';
import 'package:redpetal/widgets/textField.dart';

import '../Utlis/color..dart';

Object _itemValue;
var itemList = ['10', '20', '25', '30', '35'];
Object _itemValue1;
var itemList1 = [
  'ذكر',
];

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                      'انشاء حساب',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                    BackBtn()
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextFormField(
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      suffixIcon: Padding(
                          padding: const EdgeInsets.all(12),
                          child: SvgPicture.asset('assets/User.svg')),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 0)),
                      labelText: 'الأسم',
                      contentPadding: EdgeInsets.only(
                        top: 0,
                        right: 15,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextFormField(
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      suffixIcon: Padding(
                          padding: const EdgeInsets.all(12),
                          child: SvgPicture.asset('assets/phone.svg')),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 0)),
                      labelText: 'رقم الهاتف',
                      contentPadding: EdgeInsets.only(
                        top: 0,
                        right: 15,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                MytextField(
                    text: 'البريد الألكتروني', image: 'assets/Message.svg'),
                SizedBox(
                  height: 15,
                ),
                PasswordField(
                  text: 'كلمة السر',
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: RC.primary),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(),
                        child: Row(
                          children: [
                            Directionality(
                              textDirection: TextDirection.rtl,
                              child: DropdownButton(
                                  borderRadius: BorderRadius.circular(10),
                                  hint: Text(
                                    '20',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: RC.primary),
                                  ),
                                  underline: SizedBox(),
                                  icon: Container(
                                      width: 30,
                                      height: 29,
                                      decoration: BoxDecoration(
                                          color: RC.bg_clr,
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: Icon(
                                        Icons.keyboard_arrow_down,
                                        color: RC.primary,
                                      )),
                                  value: _itemValue,
                                  onChanged: (value) {
                                    setState(() {
                                      _itemValue = value;
                                    });
                                  },
                                  items: itemList.map((value) {
                                    return DropdownMenuItem(
                                        value: value,
                                        child: Container(
                                          alignment: Alignment.centerRight,
                                          child: Text(
                                            value,
                                            textAlign: TextAlign.end,
                                          ),
                                        ));
                                  }).toList()),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'العمر',
                        style: TextStyle(color: RC.primary, fontSize: 16),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: RC.primary),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(),
                        child: Row(
                          children: [
                            Directionality(
                              textDirection: TextDirection.rtl,
                              child: DropdownButton(
                                  borderRadius: BorderRadius.circular(10),
                                  hint: Text(
                                    'ذكر',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: RC.primary),
                                  ),
                                  underline: SizedBox(),
                                  icon: Container(
                                      width: 30,
                                      height: 29,
                                      decoration: BoxDecoration(
                                          color: RC.bg_clr,
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: Icon(
                                        Icons.keyboard_arrow_down,
                                        color: RC.primary,
                                      )),
                                  value: _itemValue1,
                                  onChanged: (value) {
                                    setState(() {
                                      _itemValue1 = value;
                                    });
                                  },
                                  items: itemList1.map((value) {
                                    return DropdownMenuItem(
                                        value: value,
                                        child: Container(
                                          alignment: Alignment.centerRight,
                                          child: Text(
                                            value,
                                            textAlign: TextAlign.end,
                                          ),
                                        ));
                                  }).toList()),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'الجنس',
                        style: TextStyle(color: RC.primary, fontSize: 16),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'كلمة السر يجب ان تكون 8 احرف او اكثر يجب استخدام رمز واحد علي الأقل',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          fontSize: 10,
                          color: RC.primary,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                MyButton(
                    name: 'انشاء حساب',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Prices(),
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
                        'انشاء حساب',
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
                        'انشاء حساب',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
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
