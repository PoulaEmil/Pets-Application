import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:pets_application/screens/blabla.dart';
import 'package:pets_application/screens/favourites.dart';
import 'package:pets_application/screens/profile.dart';
import 'package:pets_application/screens/settings.dart';

import '../constants.dart';


// ignore: camel_case_types
class home_Page extends StatefulWidget {
  const home_Page({super.key});

  @override
  State<home_Page> createState() => _home_PageState();
}

class _home_PageState extends State<home_Page> {
  int _bottomNavIndex = 0;
  List<Widget> pages = const [
    HomeHome(),
    FavouritePage(),
    ProfilePage(),
    SettingsPage(),
  ];
  List<IconData> iconText = [
    Icons.home,
    Icons.favorite,
    Icons.person,
    Icons.settings
  ];

  List<String> titleList = ['home', 'favourite', 'profile', 'settings'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor.withValues(alpha: .7),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              titleList[_bottomNavIndex],
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 24),
            ),
            const Icon(
              Icons.notifications,
              color: Colors.black,
              size: 30,
            )
          ],
        ),
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
          icons: iconText,
          activeIndex: _bottomNavIndex,
          gapLocation: GapLocation.center,
          onTap: (index) {
            setState(() {
              _bottomNavIndex = index;
            });
          }),
      body: IndexedStack(
        index: _bottomNavIndex,
        children: pages,
      ),
    );
  }
}
