import 'package:ecommerce/core/class/satusReq.dart';
import 'package:ecommerce/core/const/routesName.dart';
import 'package:ecommerce/core/functions/handlingData.dart';
import 'package:ecommerce/data/datasource/remote/forgetPass/checkEmailData.dart';
import 'package:ecommerce/view/screen/auth/SignUp.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
abstract class ForgetPassController extends GetxController{

  ForgetPass();
  checkEmail();
}
class ForgetPassControllerImp extends ForgetPassController {
  late TextEditingController email;
  checkEmailData checkemail=checkEmailData(Get.find());
  GlobalKey<FormState>formstate=GlobalKey<FormState>();
  statusReq? status;
  @override
  void onInit() {
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
  checkEmail() async{
    var form=formstate.currentState;
    if(form!.validate()) {
      print("********************************");
      status=statusReq.loading;
      update();
      var res=await checkemail.postData(email.text);
      status=handlingData(res);
      print("=================================$res");
      if(status==statusReq.success)
      {
        if(res['status']=='success')
        {
          Get.offNamed(routeApp.Verification,arguments: {"email":email.text});
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