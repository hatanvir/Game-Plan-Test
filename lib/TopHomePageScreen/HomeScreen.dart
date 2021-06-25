import 'package:flutter/material.dart';
import 'package:game_plan/TopHomePageScreen/TopHomeScreenController.dart';
import 'package:game_plan/TopHomePageScreen/widgets/AppBar.dart';
import 'package:game_plan/TopHomePageScreen/widgets/BottomNavBar.dart';
import 'package:game_plan/Utils/my_flutter_app_icons.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class HomeScreen extends StatelessWidget {
  TopHomeScreenController _controller = Get.put(TopHomeScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),

      body:Obx(()=>TopHomeScreenController.tabWidgets[_controller.selectedIndex.value]),

      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              HexColor('#E6AB68'),
              HexColor('#B6682A'),
              HexColor('#B6682A'),
            ])),
        child: Obx(()=>
            bottomNavBar(_controller)
        ),
      ),
    );
  }
}
