import 'package:ecommerce/core/class/satusReq.dart';
import 'package:ecommerce/core/const/routesName.dart';
import 'package:ecommerce/core/functions/handlingData.dart';
import 'package:ecommerce/data/datasource/remote/auth/verifyCodeData.dart';
import 'package:ecommerce/view/screen/auth/SignUp.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
abstract class verifySignCodeController extends GetxController{

  verifySignCodeController();
  goToSuccess();
}
class verifySignCodeControllerImp extends verifySignCodeController {
   String? verifyCode;
  String? email;
  statusReq? status;
  verifyCodeData verifycodedata=verifyCodeData(Get.find());
  @override
  void onInit() {
    email=Get.arguments['email'];
    print("Email from verification $email");
    super.onInit();
  }
  //
  // @override
  // void dispose() {
  //   email.dispose();
  //
  //   super.dispose();
  // }

  @override
  verifySignCodeControllerImp() {

  }
  @override
  goToSuccess() async{

      status=statusReq.loading;
      update();
      var res=await verifycodedata.postData(verifyCode!,email!);
      status=handlingData(res);
      if(status==statusReq.success)
      {
        if(res['status']=='success')
        {
          Get.toNamed(routeApp.SuccessSignUp);

        }
        else{
          Get.defaultDialog(title: "Warning",middleText: "Email or Phone  Exists");
          status=statusReq.fail;
        }

      }
      update();
      //bec when we go to sign up again after verification data saved
      //Get.delete<SignUpControllerImp>();
  }

}
