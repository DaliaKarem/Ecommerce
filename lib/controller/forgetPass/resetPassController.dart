import 'package:ecommerce/core/class/satusReq.dart';
import 'package:ecommerce/core/const/routesName.dart';
import 'package:ecommerce/core/functions/handlingData.dart';
import 'package:ecommerce/data/datasource/remote/forgetPass/resetPassData.dart';
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
  GlobalKey<FormState>formstate=GlobalKey<FormState>();
  resetPassData restdata=resetPassData(Get.find());
  statusReq? status;
  String? email;
  var Press=true;
  showPass()
  {
    Press=Press==true?false:true;
    update();
  }
  @override
  void onInit() {
    email=Get.arguments['email'];
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
  goToSuccessReset() async {
    var form = formstate.currentState;
    print("Pass is $Pass   repass is $rePass ");
    if (Pass.text != rePass.text) {
      Get.defaultDialog(title: "Error",middleText: "Password Doesnot Match");

    }
    else {
      if(form!.validate()) {
        status=statusReq.loading;
        update();
        var res=await restdata.postData(Pass.text,email!);
        status=handlingData(res);
        print("=================================$res");
        if(status==statusReq.success)
        {
          if(res['status']=='success')
          {
            Get.toNamed(routeApp.SuccessResetPass);
          }
          else{
            Get.defaultDialog(title: "Error",middleText: "Try Again");
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
  }