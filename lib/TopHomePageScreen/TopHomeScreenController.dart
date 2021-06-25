import 'package:game_plan/ContestScreenTab.dart';
import 'package:game_plan/HomeScreenTab/HomeScreenTab.dart';
import 'package:game_plan/MoreScreenTab.dart';
import 'package:get/get.dart';

import '../ProfileScreenTab.dart';

class TopHomeScreenController extends GetxController{
  var selectedIndex = 0.obs;
  static var tabWidgets = [
    HomeScreenTab(),
    ContestScreenTab(),
    ProfileScreenTab(),
    MoreScreenTab(),
  ];
}