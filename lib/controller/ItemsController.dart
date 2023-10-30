import 'package:flutter/material.dart';
import 'package:get/get.dart';
abstract class ItemsConroller extends GetxController{
initalData();
gotoCate(int);
}
class ItemsControllerImp extends ItemsConroller{
  List Cate=[];
  int? selected;
  @override
  initalData() {
  Cate=Get.arguments['categoies'];
  selected=Get.arguments['Selected'];
  }
@override
  void onInit() {
    initalData();
    super.onInit();
  }

  @override
  gotoCate(val) {
    selected=val;
    update();
  }
}