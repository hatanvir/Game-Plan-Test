import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:game_plan/HomeScreenTab/HomeScreenTabController.dart';
import 'package:game_plan/HomeScreenTab/widgets/CricketTab.dart';
import 'package:game_plan/HomeScreenTab/widgets/FootballTab.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

//tabbar ui
Widget tabBar(){
  return GetBuilder<HomeScreenTabController>(
      builder: (controller){
     return Container(
      child: Column(
        children: [
          Container(
            color: HexColor('#3D393F'),
            child: TabBar(
              labelColor: HexColor('#F3BC78'),
              controller: controller.tabController,
              indicatorSize: TabBarIndicatorSize.tab,
              unselectedLabelColor: Colors.white,
              indicatorColor: HexColor('#F3BC78'),
              indicatorWeight: 5,

              onTap: (i) {
                controller.selectedTab.value = i;
              },

              tabs: [
                tabBarTitle("Cricket",1),
                tabBarTitle("Football",2)
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
                controller: controller.tabController,
                children: [
                  cricketTabUi(),
                  footballTabUi()
                ]),
          ),
        ],
      ),
    );
  });
}