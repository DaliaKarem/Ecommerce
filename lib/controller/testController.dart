import 'package:ecommerce/core/class/satusReq.dart';
import 'package:ecommerce/core/functions/handlingData.dart';
import 'package:ecommerce/data/datasource/remote/test_data.dart';
import 'package:get/get.dart';

class testController extends GetxController{
  testData test=testData(Get.find());
  List getdata=[];
  late statusReq status;
  getData()async{
    status=statusReq.loading;
    var res=await test.getData();
    status=handlingData(res);
    print("=================================$res");
    if(status==statusReq.success)
      {
        if(res['status']=='success')
          {
            print("kkkkk");
            print(res['data']);
            print("///////////");
            getdata.addAll(res['data']);
            print(getdata);
          }
        else{
          status=statusReq.fail;
        }

      }
    update();
  }
  @override
  void onInit() {
    getData();
    super.onInit();
  }
}