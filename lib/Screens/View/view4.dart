import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Utlis/color..dart';
import '../../widgets/Components/Buttons.dart';
import '../../widgets/Components/TextFormField.dart';
import '../../widgets/Components/Textinrow.dart';
import '../../widgets/Components/progressIndicator.dart';

class View4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 1;
    double height = MediaQuery.of(context).size.height * 1;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Row(
          children: [
            CircleAvatar(
              backgroundColor: RC.primary,
              child: const Center(
                child: Icon(
                  CupertinoIcons.pen,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              width: width * 0.13,
              decoration: BoxDecoration(
                  color: RC.bg_clr, borderRadius: BorderRadius.circular(10)),
              child: Icon(
                Icons.arrow_forward_ios,
                color: RC.primary,
              ),
            ),
          )
        ],
        title: Padding(
          padding: const EdgeInsets.only(right: 70),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('تعديل', style: TextStyle(color: Colors.black)),
              Text(
                'مراجعة البيانات',
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height: height * 0.05,
                ),
                RoundedLinearProgressIndicator(value: 1),
                SizedBox(
                  height: height * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Text(
                          'م',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                        Text(
                          '7:52  2/23/2023',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    const Directionality(
                      textDirection: TextDirection.rtl,
                      child: Text(
                        'التاريخ و الوقت',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                ConstTextFormField(
                  hint: '1234-5678-9012-3456',
                  label: 'رقم البطاقة',
                  icon: const Icon(
                    Icons.credit_card,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                ConstTextFormField2(
                    hint: 'نور الدين',
                    label: 'الأسم',
                    icon: Image.asset('assets/User.png')),
                SizedBox(
                  height: height * 0.01,
                ),
                ConstTextFormField2(
                  hint: '+966 12-345-6789',
                  label: 'الهاتف',
                  icon: const Icon(
                    Icons.phone_android_outlined,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                ConstTextFormField2(
                  hint: 'الرياض حي الشفا',
                  label: 'العنوان',
                  icon: const Icon(
                    Icons.location_on,
                    color: Colors.grey,
                  ),
                ),
                Divider(
                  color: RC.primary,
                ),
                Card(
                  child: Column(
                    children: [
                      TextinRow(title1: 'سعر البضاعة', title2: 'ريال72 '),
                      TextinRow(title1: 'مصاريف الشحن', title2: 'ريال102 '),
                      TextinRow(
                          title1: 'رسوم الدفع عند الأستلام',
                          title2: 'لا يوجد '),
                      TextinRow(title1: 'رسوم إضافية (كرت)', title2: 'ريال5 '),
                      TextinRow(title1: 'الأجمالي', title2: 'ريال102  '),
                    ],
                  ),
                ),
                RoundedButton2(onPressed: () {}),
                SizedBox(
                  height: height * 0.02,
                ),
                RoundedButton(
                  onPressed: () {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
