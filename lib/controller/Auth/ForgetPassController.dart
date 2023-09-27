import 'package:ecommerce/core/const/routesName.dart';
import 'package:ecommerce/view/screen/auth/SignUp.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
abstract class ForgetPassController extends GetxController{

  ForgetPass();
  goToVerification();
}
class ForgetPassControllerImp extends ForgetPassController {
  late TextEditingController email;

  @override
  void onInit() {
    // TODO: implement onInit
    email = TextEditingController();
  }

  @override
  void dispose() {
    email.dispose();

    super.dispose();
  }


  @override
  ForgetPass() {

  }

  @override
  goToVerification() {
    Get.toNamed(routeApp.Verification);
  }

}