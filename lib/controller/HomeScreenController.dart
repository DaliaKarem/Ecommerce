import 'package:ecommerce/core/class/satusReq.dart';
import 'package:ecommerce/core/functions/handlingData.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:ecommerce/data/datasource/remote/home_data.dart';
import 'package:ecommerce/data/datasource/remote/test_data.dart';
import 'package:ecommerce/view/screen/Home.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class homeSceenController extends GetxController{
  //initialData();
  //getData();
  changepage(int index);
}
class homeSceenControllerImp extends homeSceenController{
int currentage=0;
 List<Widget> Pages=[
   Home(),
   Column(children: [
     Text("Fav")
   ],),
   Column(children: [
     Text("Cart")
   ],
   ),

   Column(children: [
     Text("setting")
   ],),
   Column(children: [
     Text("Profile")
   ],),

 ];
  @override
  changepage(int index) {
    currentage=index;
    update();
  }

}