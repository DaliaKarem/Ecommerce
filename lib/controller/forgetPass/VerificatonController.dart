import 'package:ecommerce/core/class/satusReq.dart';
import 'package:ecommerce/core/const/routesName.dart';
import 'package:ecommerce/core/functions/handlingData.dart';
import 'package:ecommerce/data/datasource/remote/forgetPass/verifyCodePassData.dart';
import 'package:ecommerce/view/screen/auth/SignUp.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
abstract class VerificationController extends GetxController{

  VerificationController();
  goToresetPass(String verifyCode);
}
class VerificationControllerImp extends VerificationController {

  GlobalKey<FormState> formstate=GlobalKey<FormState>();
  statusReq? status;
  verifyCodePassData verifyPass=verifyCodePassData(Get.find());
  String ?email;
  @override
  void onInit() {
    email=Get.arguments['email'];
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
  VerificationController() {

  }

  @override
  goToresetPass(verifyCode) async{
    var form=formstate.currentState;
    if(form!.validate()) {
      status=statusReq.loading;
      update();
      print("emaillllllll $email   verifuyyyy $verifyCode");
      var res=await verifyPass.postData(verifyCode,email!);
      status=handlingData(res);
      print("=================================$res");
      if(status==statusReq.success)
      {
        if(res['status']=='success')
        {
          Get.toNamed(routeApp.resetPass,arguments: {"email":email});
        }
        else{
          Get.defaultDialog(title: "Error",middleText: "Email  Not Correct");
          status=statusReq.fail;
        }

      }
      update();
    }
    else{
      print("Error");
    }
  }

}
