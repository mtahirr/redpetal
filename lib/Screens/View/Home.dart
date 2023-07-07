import 'package:flutter/material.dart';
import 'package:redpetal/Screens/View/Screen2.dart';

import '../../Utlis/color..dart';
import '../../widgets/Components/Buttons.dart';
import '../../widgets/Components/RoutesNmae.dart';
import '../../widgets/Components/TextFormField.dart';
import '../../widgets/Components/appbar.dart';
import '../../widgets/Components/progressIndicator.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 1;
    double height = MediaQuery.of(context).size.height * 1;
    return Scaffold(
      appBar: AppBarr(),
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
                RoundedLinearProgressIndicator(value: 0.25),
                SizedBox(
                  height: height * 0.01,
                ),
                const Text(
                  'ادفع بطريقة اسرع عن طريق استخدام ابل باي',
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                const Text(
                  'او يمكنك الدفع عن طريق طرق الدفع التقليدي يمكنك ادخال بياناتك بالأسفل',
                ),
                ConstTextFormField(
                    hint: 'نور الدين',
                    label: 'الأسم',
                    icon: Image.asset('assets/User.png')),
                SizedBox(
                  height: height * 0.01,
                ),
                ConstTextFormField(
                  hint: 'Noureldin.ab98@gmail.com',
                  label: 'البريد الألكتروني',
                  icon: Icon(
                    Icons.email_outlined,
                    color: RC.primary,
                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                ConstTextFormField(
                  hint: '+966 12-345-6789',
                  label: 'الهاتف',
                  icon: Icon(
                    Icons.phone_android_outlined,
                    color: RC.primary,
                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                ConstTextFormField(
                  hint: 'الرياض حي الشفا',
                  label: 'العنوان',
                  icon: Icon(
                    Icons.location_on,
                    color: RC.primary,
                  ),
                ),
                SizedBox(
                  height: height * 0.1,
                ),
                RoundedButton2(onPressed: () {}),
                SizedBox(
                  height: height * 0.02,
                ),
                RoundedButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (ctx) => View2()));
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
