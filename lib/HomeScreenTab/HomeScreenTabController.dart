import 'dart:convert';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:http/http.dart' as http;

 class HomeScreenTabController extends GetxController with SingleGetTickerProviderMixin{
  TabController tabController;
  var selectedTab = 0.obs;

  var isEmptyMatchesCricket = false.obs;
  var isLoadingProgressBarCricket = false.obs;
  var isConnectedInternetCricket = false.obs;

  var isEmptyMatchesFootball = false.obs;
  var isLoadingProgressBarFootball = false.obs;
  var isConnectedInternetFootball = false.obs;
  @override
  void onInit() {
    super.onInit();
    tabController = new TabController(length: 2, vsync: this);
    _getCricketMatchData();
    _getFootballMatchData();
  }
  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  //fetching cricket matches data
  void _getCricketMatchData()async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    isLoadingProgressBarCricket.value = true;
    try{
      if (connectivityResult == ConnectivityResult.mobile || connectivityResult == ConnectivityResult.wifi) {
        isConnectedInternetCricket.value = true;
        var response = await http.post(Uri.parse('https://myplan.rultest2.com/api/cricket/match'));
        if(response.statusCode == 200){
          var d = json.decode(response.body);
          if(d['matches'].length == 0){
            isEmptyMatchesCricket.value = true;
          }else{
            isEmptyMatchesCricket.value = false;
          }
          isLoadingProgressBarCricket.value = false;
        }else{
          isLoadingProgressBarCricket.value = false;
        }
      } else {
        Get.snackbar("Error","No internet connection.",backgroundColor:  HexColor('#B6682A'),snackPosition: SnackPosition.BOTTOM);
        isLoadingProgressBarCricket.value = false;
      }

    }catch(e){
      Get.snackbar("Error","Internal Error Occurred"
          ,backgroundColor:  HexColor('#B6682A'),
          snackPosition: SnackPosition.BOTTOM);
      isLoadingProgressBarCricket.value = false;
      isConnectedInternetCricket.value = false;

    }
  }
  //fetching football matches data
  void _getFootballMatchData() async{
    var connectivityResult = await (Connectivity().checkConnectivity());
    isLoadingProgressBarFootball.value = true;
    try{
      if (connectivityResult == ConnectivityResult.mobile || connectivityResult == ConnectivityResult.wifi) {
        isConnectedInternetFootball.value = true;
        var response = await http.post(Uri.parse('https://myplan.rultest2.com/api/football/match'));
        if(response.statusCode == 200){
          var d = json.decode(response.body);
          if(d['matches'].length == 0){
            isEmptyMatchesFootball.value = true;
          }else{
            isEmptyMatchesFootball.value = false;
          }
          isLoadingProgressBarFootball.value = false;
        }else{
          isLoadingProgressBarFootball.value = false;
        }
      }else{
        if(!Get.isSnackbarOpen) Get.snackbar("Error","No internet connection.",backgroundColor:  HexColor('#B6682A'),snackPosition: SnackPosition.BOTTOM);
        isLoadingProgressBarFootball.value = false;
      }

    }catch(e){
      if(!Get.isSnackbarOpen)Get.snackbar(
          "Error","Internal Error Occurred",
          backgroundColor:  HexColor('#B6682A'),
          snackPosition: SnackPosition.BOTTOM);
      isLoadingProgressBarFootball.value = false;
      isConnectedInternetFootball.value = false;
    }

  }
}