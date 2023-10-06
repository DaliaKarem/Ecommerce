import 'package:ecommerce/core/class/satusReq.dart';
import 'package:ecommerce/core/const/routesName.dart';
import 'package:ecommerce/core/functions/handlingData.dart';
import 'package:ecommerce/data/datasource/remote/auth/loginData.dart';
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
  statusReq? status;
  loginData logindata=loginData(Get.find());
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
  login() async{
    var form=formstate.currentState;
    if(form!.validate()){
      status=statusReq.loading;
      update();
      var res=await logindata.postData(email.text,password.text);
      status=handlingData(res);
      print("=================================$res");
      if(status==statusReq.success)
      {
        if(res['status']=='success')
        {
          Get.offNamed(routeApp.Home);
        }
        else{
          Get.defaultDialog(title: "Error",middleText: "Email or Pass No Correct");
          status=statusReq.fail;
        }

      }
      update();
      //bec when we go to sign up again after verification data saved
      //Get.delete<SignUpControllerImp>();
    }
    else{
      print("Error in sign");
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