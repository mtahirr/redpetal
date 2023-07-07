import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:redpetal/Screens/categoryPage.dart';
import 'package:redpetal/Screens/profile.dart';

import '../Screens/aboutUs.dart';
import '../Screens/favorite.dart';
import '../Screens/homePage.dart';
import '../Utlis/color..dart';

class BottomNavigationExample extends StatefulWidget {
  @override
  _BottomNavigationExampleState createState() =>
      _BottomNavigationExampleState();
}

class _BottomNavigationExampleState extends State {
  int _selectedTab = 3;

  List _pages = [
    Profile(),
    Favourite(),
    CategoryPage(),
    Home(),
  ];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
      print(_selectedTab);
    });
  }

  final GlobalKey<ScaffoldState> _scaffold = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffold,
      body: _pages[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index) => _changeTab(index),
        selectedItemColor: RC.primary,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/User.svg',
                color: _selectedTab == 0 ? RC.primary : RC.bg_clr,
              ),

              // Image.asset(
              //   'assets/User_t.png',
              //
              // ),
              label: "الحساب"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite,
                  color: _selectedTab == 1 ? RC.primary : RC.bg_clr),
              label: "المفضلة"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/Explore.svg',
                color: _selectedTab == 2 ? RC.primary : RC.bg_clr,
              ),
              label: "الأقسام"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/Home.svg',
                color: _selectedTab == 3 ? RC.primary : RC.bg_clr,
              ),
              label: "المتجر"),
        ],
      ),
    );
  }
}
