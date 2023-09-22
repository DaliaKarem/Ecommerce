import 'package:ecommerce/controller/onboadingcontroller.dart';
import 'package:ecommerce/core/const/color.dart';
import 'package:ecommerce/data/datasource/static/static.dart';
import 'package:ecommerce/view/widget/onBoarding/customButton.dart';
import 'package:ecommerce/view/widget/onBoarding/dotontroller.dart';
import 'package:ecommerce/view/widget/onBoarding/slidder.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class onBoarding extends StatelessWidget {
  const onBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(onBoardingControllerImp());
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        Expanded(
          flex: 3,
          child: slidder()
        ),
        Expanded(
            flex: 1,
            child: Column(
              children: [
                dotcontroller(),
                SizedBox(height: 30,),
                Button(text:"Continue",color:colorApp.primary,textcolor:Colors.white),
                SizedBox(height: 10,),
                Button(text:"Skip",color:Colors.white,textcolor:Colors.black),

              ],
            ))
      ],
    )));
  }
}
