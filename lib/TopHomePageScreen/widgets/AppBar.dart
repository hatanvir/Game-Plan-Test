import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

Widget appBar(){
  return AppBar(
    title:Text('Game Play'),
    centerTitle: true,
    flexibleSpace: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                HexColor('#B6682A'),
                HexColor('#B6682A'),
                HexColor('#E6AB68'),
              ]
          )
      ),
    ),
  );
}