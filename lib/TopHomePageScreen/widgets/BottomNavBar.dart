import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:game_plan/TopHomePageScreen/TopHomeScreenController.dart';
import 'package:game_plan/Utils/my_flutter_app_icons.dart';

Widget bottomNavBar(TopHomeScreenController _controller) {
  return BottomNavigationBar(
    currentIndex: _controller.selectedIndex.value,
    showUnselectedLabels: true,
    backgroundColor: Colors.transparent,
    type: BottomNavigationBarType.fixed,
    elevation: 0,
    unselectedItemColor: Colors.black54,
    selectedItemColor: Colors.white,
    selectedLabelStyle: TextStyle(color: Colors.white),
    unselectedLabelStyle: TextStyle(color: Colors.black12),
    onTap: (n) {
      _controller.selectedIndex.value = n;
      print(n);
    },
    items: [
      BottomNavigationBarItem(
          icon: Icon(
            MyFlutterApp.home,
            size: 20,
          ),
          label: 'Home'),
      BottomNavigationBarItem(
        icon: Icon(
          MyFlutterApp.path_1998,
          size: 20,
        ),
        label: 'Contest',
      ),
      BottomNavigationBarItem(
          icon: Icon(
            MyFlutterApp.profile,
            size: 20,
          ),
          label: 'Profile'),
      BottomNavigationBarItem(
          icon: Icon(
            MyFlutterApp.path,
            size: 15,
          ),
          label: 'More'),
    ],
  );
}
