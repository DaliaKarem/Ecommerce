import 'package:ecommerce/core/class/satusReq.dart';
import 'package:ecommerce/core/functions/handlingData.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:ecommerce/data/datasource/remote/Cart/add_cart_Data.dart';
import 'package:ecommerce/data/datasource/remote/Cart/getcart_Data.dart';
import 'package:ecommerce/data/datasource/remote/Cart/removeFrom_cartPage_Data.dart';
import 'package:ecommerce/data/datasource/remote/Cart/remove_cart_Data.dart';
import 'package:ecommerce/data/model/Cart.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

abstract class CartContoller extends GetxController {
  addtocart(String);
  removeFromcart(String);
  getData( );
  removeFrompage(String);
}

class CartContollerImp extends CartContoller {
  Map iscart = {};
  add_CartData addcart = add_CartData(Get.find());
  remove_CartData removecart=remove_CartData(Get.find()) ;
  getCartData getcart=getCartData(Get.find());
  removeFromCartPageData removefrompage=removeFromCartPageData(Get.find());
  List data = [];
  List<CartModel> cart=[];
  statusReq? status;
  myServices myservices=Get.find();
  String ?id;
  setcart(id, val) {
    //id ==> itemId and Val is cart(1) or notcart(0)
    iscart[id] = val;
    update();
  }
  @override
  initialData(){
    id=myservices.sharedPreferences.getString("id");

  }
  @override
  void onInit() {
    //initialData();
    update();
    getData();
    super.onInit();
  }
  @override
  getData()async{
    cart.clear();
    status=statusReq.loading;
    var res=await getcart.getData(myservices.sharedPreferences.getString("id")!);
    print("cartvvvvvvvvv");
    status=handlingData(res);
    if(status==statusReq.success)
    {
      if(res['status']=='success')
      {
        List resdata=res['data'];
        cart.addAll(resdata.map((e) => CartModel.fromJson(e)));
        print("cart is:   ${cart}");
      }
      else{
        status=statusReq.fail;
      }

    }

    update();
  }
  @override
  addtocart(itemid) async{
    status = statusReq.loading;
    print(" id ii" + (myservices.sharedPreferences?.getString("id") ?? "null"));
    var res = await addcart.postData(myservices.sharedPreferences.getString("id")!,itemid);
    status = handlingData(res);
    if (status == statusReq.success) {
      if (res['status'] == 'success') {
        print("Dnn");
        Get.rawSnackbar(title: "Done",message: "Add to cart");
      } else {
        status = statusReq.fail;
      }
    }
  }

  @override
  removeFromcart(itemid) async{
    status = statusReq.loading;
    print("jjjjj");

    var res = await removecart.remove_Data(myservices.sharedPreferences.getString("id")!,itemid);
    print("jjjjj");
    status = handlingData(res);
    if (status == statusReq.success) {
      if (res['status'] == 'success') {
        print("Dnn");

        Get.rawSnackbar(title: "Done",message: "Remove From cart");
      } else {
        status = statusReq.fail;
      }
    }
  }

  @override
  removeFrompage(itemid) {
    status = statusReq.loading;

    var res = removefrompage.DeleteCart(
        myservices.sharedPreferences.getString("id")!, itemid);
    status = handlingData(res);

    cart.removeWhere((element) => element.itemId == itemid);
    Get.rawSnackbar(title: "Done", message: "Remove From cart");


    update();
  }
}

