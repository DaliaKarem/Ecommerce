import 'package:ecommerce/core/class/satusReq.dart';
import 'package:ecommerce/core/const/routesName.dart';
import 'package:ecommerce/core/functions/handlingData.dart';
import 'package:ecommerce/data/datasource/remote/items_data.dart';
import 'package:ecommerce/data/model/items.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
abstract class ItemsConroller extends GetxController{
initalData();
gotoCate(int,Sring);
getItems(String);
gotoProductDetails(itemModel);
calcDis(String price,String dis);
}
class ItemsControllerImp extends ItemsConroller{
  List Cate=[];
  int? selected;
  String?itemID;
  statusReq ?status;
  itemsData itemData=itemsData(Get.find());
  List items=[];
  String? result;

  @override
  initalData() {
  Cate=Get.arguments['categoies'];
  selected=Get.arguments['Selected'];
  itemID=Get.arguments['itemID'];
  getItems(itemID);

  }
@override
  void onInit() {
    initalData();
    super.onInit();
  }

  @override
  getItems(itemID)async{
    items.clear();
    status=statusReq.loading;
    var res=await itemData.getData(itemID);
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
  gotoCate(val,Id) {
    selected=val;
    getItems(Id);
    update();
  }

  @override
  gotoProductDetails( itemsmodel) {
    Get.toNamed(routeApp.ProductDetails,arguments: {
      'itemModel': itemsmodel,
      'price_dis':result,
    });
  }
  @override
  String? calcDis(String price, String dis) {
    double priceValue = double.parse(price);
    double disValue = double.parse(dis);

    double discAmount = (priceValue * disValue) / 100;
    double discountedPrice = priceValue - discAmount;

    // Convert the discounted price back to a string if needed
    result= discountedPrice.toStringAsFixed(2);

    return result;
  }

}