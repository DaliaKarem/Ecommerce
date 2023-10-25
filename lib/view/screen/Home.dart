import 'dart:io';

import 'package:ecommerce/controller/homePagecontroller.dart';
import 'package:ecommerce/core/class/satusReq.dart';
import 'package:ecommerce/core/const/color.dart';
import 'package:ecommerce/view/widget/Home/ListCategoriesHome.dart';
import 'package:ecommerce/view/widget/Home/OfferCard.dart';
import 'package:ecommerce/view/widget/Home/ListItemsHome.dart';
import 'package:ecommerce/view/widget/Home/customAppBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(homePageControllerImp());
    return  GetBuilder<homePageControllerImp>(
      builder: (controller) {
        return controller.status == statusReq.loading
            ? Lottie.asset("assets/lottie/Loading.json")
            : Container(
          margin: EdgeInsets.symmetric(horizontal: 12),
                child: ListView(
                children: [
                  customAppBar(onPressed:() {},onPressedNoti: (){},),
                  OfferCard(),
                  Text(
                    "Categories",
                    style: TextStyle(fontSize: 20, color: colorApp.primary),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListCategoriesHome(),
                  Text(
                    "Offers",
                    style: TextStyle(fontSize: 20, color: colorApp.primary),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListItemsHome(),

                ],
              ));
      },
    );
  }
}
