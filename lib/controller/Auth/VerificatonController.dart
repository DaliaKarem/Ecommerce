import 'package:ecommerce/core/const/routesName.dart';
import 'package:ecommerce/view/screen/auth/SignUp.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
abstract class VerificationController extends GetxController{

  VerificationController();
  goToresetPass();
}
class VerificationControllerImp extends VerificationController {
late String verifyCode;
  @override
  void onInit() {
    // TODO: implement onInit
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
  goToresetPass() {
    Get.toNamed(routeApp.resetPass);
  }

}