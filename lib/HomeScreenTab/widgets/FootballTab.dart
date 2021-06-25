import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:game_plan/HomeScreenTab/HomeScreenTabController.dart';
import 'package:game_plan/HomeScreenTab/widgets/MatchListItem.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';


///football tab ui
Widget footballTabUi() {
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
              child: controller.isLoadingProgressBarFootball.value?

              Center(
                  child: CircularProgressIndicator(
                    valueColor:AlwaysStoppedAnimation<Color>(HexColor('#F3BC78')),
                  )):controller.isEmptyMatchesFootball.value?

              _emptyView():
              !controller.isConnectedInternetFootball.value?
              Container():

              ListView.builder(
                  itemCount: 10,
                  itemBuilder: (b,ctx){
                    return matchListItem(
                        image1: 'assets/BRA_flag.png',
                        image2: 'assets/ARG_flag.png',
                        title: 'Brazil VS Argentina',
                        country1: 'BRA',
                        country2: 'ARG'
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