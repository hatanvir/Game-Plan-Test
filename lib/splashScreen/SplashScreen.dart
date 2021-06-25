import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:game_plan/splashScreen/SplashScreenController.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class SplashScreen extends StatelessWidget {
  SplashScreenController _controller = Get.put(SplashScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Text(
          'Game Plan',
          style: TextStyle(
              fontSize: 40,
              color: HexColor('#F3BC78')
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}