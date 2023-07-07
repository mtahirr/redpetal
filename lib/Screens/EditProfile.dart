import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:redpetal/widgets/backButton.dart';
import 'package:redpetal/widgets/button.dart';

import 'package:redpetal/widgets/password.dart';
import 'package:redpetal/widgets/textField.dart';

import '../Utlis/color..dart';

class EditProfile extends StatefulWidget {
  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
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
                    InkWell(
                        onTap: openAlertBox,
                        child: Image.asset('assets/Group 1447.png')),
                    Text(
                      'المعلومات الشخصية',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                    BackBtn()
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                CircleAvatar(
                  radius: 80,
                ),
                SizedBox(
                  height: 20,
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
                  text: 'البريد الألكتروني',
                  image: 'assets/Message.svg',
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
                        padding: const EdgeInsets.only(left: 0),
                        child: Icon(
                          Icons.location_on,
                          color: RC.primary,
                        ),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 0)),
                      labelText: 'المدينة',
                      contentPadding:
                          EdgeInsets.only(top: 0, right: 15, left: 10),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                PasswordField(
                  text: 'كلمة السر',
                ),
                SizedBox(
                  height: 15,
                ),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextFormField(
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      suffixIcon: InkWell(
                        onTap: openAlertBox1,
                        child: Image(
                          image: AssetImage(
                            'assets/CC.png',
                          ),
                          height: 10,
                        ),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 0)),
                      labelText: 'بطاقة الدفع',
                      contentPadding:
                          EdgeInsets.only(top: 0, right: 15, left: 10),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  openAlertBox() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            content: Container(
              width: 300.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 40,
                      ),
                      Text(
                        'تغيير كلمة السر',
                        style: TextStyle(
                          fontSize: 20,
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
                    height: 10,
                  ),
                  PasswordField(
                    text: 'كلمة السر الحالية',
                  ),
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
                    height: 20,
                  ),
                  MyButton(
                    name: 'تغيير كلمة السر',
                    onPressed: openAlertBox1,
                  )
                ],
              ),
            ),
          );
        });
  }

  openAlertBox1() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            content: Container(
              width: 300.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 40,
                      ),
                      Text(
                        'تغيير بطاقة الدفع',
                        style: TextStyle(
                          fontSize: 20,
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
                    height: 10,
                  ),
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: TextFormField(
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(left: 6),
                          child: InkWell(
                            onTap: openAlertBox1,
                            child: Image(
                              image: AssetImage(
                                'assets/CC.png',
                              ),
                              height: 10,
                            ),
                          ),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(width: 0)),
                        labelText: 'بطاقة الدفع',
                        contentPadding:
                            EdgeInsets.only(top: 0, right: 15, left: 10),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: MytextField(
                          text: 'البريد الألكتروني',
                          image: 'assets/Editting.svg',
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: MytextField(
                          text: 'البريد الألكتروني',
                          image: 'assets/Calendar.svg',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MytextField(
                    text: 'البريد الألكتروني',
                    image: 'assets/User.svg',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MyButton(
                    name: 'تغيير بطاقة الدفع',
                    onPressed: () {},
                  )
                ],
              ),
            ),
          );
        });
  }
}
