import 'package:ecommerce/core/const/routesName.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
abstract class LoginController extends GetxController{
  login();
  goToSignUp();
  goToForget();
}
class LoginControllerImp extends LoginController{
  var Press=true;
 late TextEditingController email;
  late TextEditingController password;
  GlobalKey<FormState>formstate=GlobalKey<FormState>();
  showPass()
  {
    Press=Press==true?false:true;
    update();
  }
  @override
  void onInit() {
    // TODO: implement onInit
    email=TextEditingController();
    password=TextEditingController();
  }
  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  login() {
var form=formstate.currentState;
if(form!.validate())
  {
    print("Valid");

  }
else{
  print("Error");
}
  }

  @override
  goToSignUp() {
    Get.offNamed(routeApp.SignUp);
  }

  @override
  goToForget() {
    Get.toNamed(routeApp.ForgetPass);
  }

}