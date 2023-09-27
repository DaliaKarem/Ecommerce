import 'package:ecommerce/core/const/routesName.dart';
import 'package:ecommerce/view/screen/auth/SignUp.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
abstract class resetPassController extends GetxController{

  resetPassController();
  goToSuccessReset();
}
class resetPassControllerImp extends resetPassController {
  late TextEditingController Pass;
  late TextEditingController rePass;

  @override
  void onInit() {
    // TODO: implement onInit
    Pass = TextEditingController();
    rePass = TextEditingController();

  }

  @override
  void dispose() {
    Pass.dispose();
    rePass.dispose();
    super.dispose();
  }


  @override
  resetPassControllerImp() {

  }

  @override
  goToSuccessReset() {
    Get.toNamed(routeApp.SuccessResetPass);
  }

}