import 'package:ecommerce/core/const/routesName.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
abstract class LoginController extends GetxController{

  visability(bool isVisable);
  login();
  goToSignUp();
}
class LoginControllerImp extends LoginController{
  bool Press=false;
 late TextEditingController email;
  late TextEditingController password;

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
  visability(bool isVisable) {

    print("jjjjjjj");
    print(isVisable);
    if(isVisable==false)
    {
      print("hh");
      isVisable=true;
    }
    else if(isVisable==true){
      print("kk");
      isVisable=false;
    }
    Press=isVisable;
    print(isVisable);
    update();

  }

  @override
  login() {

  }

  @override
  goToSignUp() {
    Get.toNamed(routeApp.SignUp);
  }

}