import 'package:ecommerce/controller/ItemsController.dart';
import 'package:ecommerce/core/const/color.dart';
import 'package:ecommerce/view/widget/Home/ListCategoriesHome.dart';
import 'package:ecommerce/view/widget/Home/customAppBar.dart';
import 'package:ecommerce/view/widget/Items/ListCategoriesItems.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Items extends StatelessWidget {
  const Items({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ItemsControllerImp());
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            customAppBar(onPressed:() {},onPressedNoti: (){},),
            SizedBox(
              height: 20,
            ),
            ListCategoriesItems(),
          ],
        ),
      ),
    );
  }
}
