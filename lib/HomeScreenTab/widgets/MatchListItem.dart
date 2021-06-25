import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

///matches list item ui
Widget matchListItem({String image1,String image2,String title,
  String country1,String country2}){
  return Container(
    margin: EdgeInsets.only(left: 15,right: 15,top: 10),
    decoration: BoxDecoration(
        color: HexColor('#3D393F'),
        borderRadius: BorderRadius.circular(10)
    ),

    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            margin: EdgeInsets.only(left: 10,top: 15,bottom: 10,right: 10),
            child: Text(title,
              style: TextStyle(color: HexColor('#F3BC78')),)
        ),


        Container(
          margin: EdgeInsets.only(left: 10,right: 10,bottom: 30,top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                   Image.asset(image1,height: 32,width: 32,),

                    Container(
                      width: 10,
                    ),

                    Text(country1,
                      style: TextStyle(
                          color: HexColor('#F3BC78'),
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),
              ),

              Text('8 Days Left',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12),
              ),


              Container(
                child: Row(
                  children: [
                    Text(country2,
                      style: TextStyle(
                          color: HexColor('#F3BC78'),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),

                    ),
                    Container(
                      width: 10,
                    ),
                    Image.asset(image2,height: 32,width: 32,),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}