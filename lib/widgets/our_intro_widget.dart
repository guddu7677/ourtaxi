import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget ourIntroWidget(){
return Container(
  width: Get.width,
  decoration: BoxDecoration(
    image: DecorationImage(image: AssetImage("assets/images/emple.png"),fit: BoxFit.cover)
  ),
  height: Get.height*0.6,
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
       Image.asset("assets/images/tax.png",height:200,width: 200,),
     Text("OurTaxy",style: TextStyle(fontSize: 30),)
        ],
  ),
);

}