import 'package:flutter/material.dart';
import 'package:game_plan/HomeScreenTab/HomeScreenTabController.dart';
import 'package:game_plan/HomeScreenTab/widgets/TabbarUi.dart';
import 'package:get/get.dart';
class HomeScreenTab extends StatelessWidget {
  HomeScreenTabController _controller = Get.put(HomeScreenTabController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabBar()
    );
  }
}
