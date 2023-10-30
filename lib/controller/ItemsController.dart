import 'package:ecommerce/core/class/satusReq.dart';
import 'package:ecommerce/core/functions/handlingData.dart';
import 'package:ecommerce/data/datasource/remote/items_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
abstract class ItemsConroller extends GetxController{
initalData();
gotoCate(int);
getItems();
}
class ItemsControllerImp extends ItemsConroller{
  List Cate=[];
  int? selected;
  statusReq ?status;
  itemsData itemData=itemsData(Get.find());
  List items=[];
  @override
  initalData() {
  Cate=Get.arguments['categoies'];
  selected=Get.arguments['Selected'];
  getItems();

  }
@override
  void onInit() {
    initalData();
    super.onInit();
  }

  @override
  getItems()async{
    status=statusReq.loading;
    var res=await itemData.getData();
    status=handlingData(res);
    if(status==statusReq.success)
    {
      if(res['status']=='success')
      {
        items.addAll(res['data']);

      }
      else{
        status=statusReq.fail;
      }

    }
    update();
  }
  @override
  gotoCate(val) {
    selected=val;
    update();
  }
}