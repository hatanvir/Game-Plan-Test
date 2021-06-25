import 'dart:async';

import 'package:game_plan/TopHomePageScreen/HomeScreen.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class SplashScreenController extends GetxController{
  @override
  void onInit() {
    super.onInit();
    _nextScreen();
  }

   _nextScreen() {
    return Timer(Duration(seconds: 3), ()=>Get.off(()=>HomeScreen()));
  }
}