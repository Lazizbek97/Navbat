import 'package:flutter/material.dart';

import '../../../../sizeConfig.dart';
import '../aboutCompany.dart';

class MyTabBar extends StatefulWidget {
  MyTabBar({Key? key, required this.bottonIndex}) : super(key: key);
  int? bottonIndex;
  // static int afd = bottonIndex;
//  static int? pageController;
  @override
  _MyTabBarState createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar> {
  static int menuIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        primary: menuIndex == 2 ? Colors.blue.shade50 : Colors.transparent,
        shape: const StadiumBorder(),
        padding: EdgeInsets.symmetric(
          horizontal: menuIndex == 2 ? getWidth(60) : getWidth(20),
        ),
      ),
      onPressed: () {
        setState(
          () {
            menuIndex = 2;
          },
        );
      },
      child: const Text(
        "Gallerys ",
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
