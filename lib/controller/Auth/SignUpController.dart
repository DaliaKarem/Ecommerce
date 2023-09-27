import 'package:ecommerce/core/const/routesName.dart';
import 'package:ecommerce/view/screen/auth/SignUp.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
abstract class SignUpController extends GetxController{
  SignUp();
  goToLogin();
}
class SignUpControllerImp extends SignUpController {
  bool Press = false;
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController userName;
  late TextEditingController phone;
  GlobalKey<FormState>formstate=GlobalKey<FormState>();
  @override
  void onInit() {
    // TODO: implement onInit
    email = TextEditingController();
    password = TextEditingController();
    userName= TextEditingController();
    phone= TextEditingController();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    userName.dispose();
    phone.dispose();
    super.dispose();
  }


  @override
  SignUp() {
    var form=formstate.currentState;
    if(form!.validate()){
      print("valid Sign");
      Get.offNamed(routeApp.verifySignCode);
    }
    else{
      print("Error in sign");
    }

  }

  @override
  goToLogin() {
    Get.toNamed(routeApp.Login);
  }

}