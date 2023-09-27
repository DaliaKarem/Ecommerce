import 'package:ecommerce/core/const/routesName.dart';
import 'package:ecommerce/view/screen/auth/SignUp.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
abstract class checkEmailController extends GetxController{

  checkEmail();
  goToVerifcation();
}
class checkEmailControllerImp extends checkEmailController {
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
  checkEmail() {

  }

  @override
  goToVerifcation() {
    Get.toNamed(routeApp.verifySignCode);
  }

}