import 'package:ecommerce/core/class/satusReq.dart';
import 'package:ecommerce/core/functions/handlingData.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:ecommerce/data/datasource/remote/home_data.dart';
import 'package:ecommerce/data/datasource/remote/test_data.dart';
import 'package:get/get.dart';

abstract class homePageController extends GetxController{
 initialData();
 getData();
}
class homePageControllerImp extends homePageController{
myServices mysevices=Get.find();
String ? name,id;
  @override
  initialData(){
   name=mysevices.sharedPreferences.getString("user_name");
   id=mysevices.sharedPreferences.getString("id");

  }
  statusReq? status;
  homeData homedata=homeData(Get.find());
  List data=[];
  List cate=[];
List items=[];

@override
  getData()async{
    status=statusReq.loading;
    var res=await homedata.getData();
    status=handlingData(res);
    if(status==statusReq.success)
    {
      if(res['status']=='success')
      {
        cate.addAll(res['categories']);
        items.addAll(res['items']);

      }
      else{
        status=statusReq.fail;
      }

    }
    update();
  }
  @override
  void onInit() {
    initialData();
    getData();
    super.onInit();
  }
}