import 'package:flutter/material.dart';

import '../../Screens/View/Home.dart';
import '../../Screens/View/Screen2.dart';
import '../../Screens/View/View3.dart';
import '../../Screens/View/view4.dart';
import 'RoutesNmae.dart';

class Routes {
  static Route<dynamic> Generate_Routes(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.home:
        return MaterialPageRoute(
            builder: (BuildContext context) => HomeScreen());
      case RoutesName.view2:
        return MaterialPageRoute(builder: (BuildContext context) => View2());
      case RoutesName.view3:
        return MaterialPageRoute(builder: (BuildContext context) => View3());
      case RoutesName.view4:
        return MaterialPageRoute(builder: (BuildContext context) => View4());
      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(
              child: Text('You are on the Wrong way'),
            ),
          );
        });
    }
  }
}
