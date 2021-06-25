import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:game_plan/HomeScreenTab/HomeScreenTabController.dart';
import 'package:game_plan/HomeScreenTab/widgets/MatchListItem.dart';
import 'package:game_plan/Utils/my_flutter_app_icons.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

///cricket tab ui
Widget cricketTabUi() {
  return GetBuilder<HomeScreenTabController>(
    builder: (controller) {
      return Container(
        color: Colors.black,

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 15,right: 15,top: 25,bottom: 5),
              width: Get.size.width,
              height: Get.height/100*25,
              color: Colors.black,
              padding: EdgeInsets.all(0),
              child: Image.asset('assets/game_plan_ui.png',
                fit: BoxFit.fill,),
            ),

            Obx(()=> Expanded(
                child: controller.isLoadingProgressBarCricket.value?

                Center(
                    child: CircularProgressIndicator(
                      valueColor:AlwaysStoppedAnimation<Color>(HexColor('#F3BC78')),
                    )):controller.isEmptyMatchesCricket.value?

               _emptyView():
                !controller.isConnectedInternetCricket.value?
                Container():
                ListView.builder(
                    itemCount: 10,
                    itemBuilder: (b,ctx){
                      return matchListItem(
                        image1: 'assets/BD_flag_button.png',
                        image2: 'assets/ZIM_flag_button.png',
                        title: 'Bangladesh VS Zimbabwe',
                        country1: 'BAN',
                        country2: 'ZIM'
                      );
                    }),
              ),
            )
          ],
        ),
      );
    },
  );
}

///empty view
///this will be trigger when no match found
Widget _emptyView() {
  return Center(
    child: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Matches not found.',style: TextStyle(color: HexColor('#F3BC78'),fontSize: 15),)
        ],
      ),
    ),
  );
}

///tab bar title ui
Widget tabBarTitle(String s, int i) {
  return Tab(
    child: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            i == 1
                ? MyFlutterApp.cricket_player_with_bat
                : MyFlutterApp.soccer_player,
          ),
          Container(
            width: 5,
          ),
          Text(
            s,
            style: TextStyle(),
          )
        ],
      ),
    ),
  );
}
