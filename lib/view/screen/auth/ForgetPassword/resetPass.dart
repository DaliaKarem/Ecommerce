import 'package:ecommerce/controller/forgetPass/resetPassController.dart';
import 'package:ecommerce/core/functions/ValidatorInput.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/core/const/color.dart';
import 'package:ecommerce/view/widget/auth/customButtonAuth.dart';
import 'package:ecommerce/view/widget/auth/customTitle.dart';
import 'package:ecommerce/view/widget/auth/customtextbody.dart';
import 'package:ecommerce/view/widget/auth/customtextfield.dart';
import 'package:lottie/lottie.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ecommerce/core/class/satusReq.dart';

class resetPass extends StatelessWidget {
  const resetPass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   Get.put(resetPassControllerImp());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: colorApp.background,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            "Reset Password",
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        body: GetBuilder<resetPassControllerImp>(
        builder: ( controller) {
          return controller.status == statusReq.loading ?
          Lottie.asset("assets/lottie/Loading.json") :
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            child: Form(
              key: controller.formstate,
              child: ListView(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  customTitle(text: "Check Email"),
                  SizedBox(
                    height: 5,
                  ),
                  cstomtextbody(
                      text: "Enter Your New Password to Reset Password"),
                  SizedBox(
                    height: 40,
                  ),
                  GetBuilder<resetPassControllerImp>(builder: (Control){
                    return  customTextAuth(
                      isNum: false,
                      isPress: controller.Press,
                      onTapIcon:(){
                        controller.showPass();
                      } ,
                      validator: (val){
                        return ValidatorInput("pass",val! , 8, 15);
                      },
                      text: "Password",
                      hinttext: "Enter Password",
                      icons: Icon(Icons.visibility),
                      icon2: Icon(Icons.visibility_off),control: controller.Pass ,);

                  }),

                  SizedBox(
                    height: 30,
                  ),
                  GetBuilder<resetPassControllerImp>(builder: (Control){
                    return  customTextAuth(
                      isNum: false,
                      isPress: controller.Press,
                      onTapIcon:(){
                        controller.showPass();
                      } ,
                      validator: (val){
                        return ValidatorInput("pass",val! , 8, 15);
                      },
                      text: "Password",
                      hinttext: "Enter Password",
                      icons: Icon(Icons.visibility),
                      icon2: Icon(Icons.visibility_off),control: controller.rePass ,);

                  }),
                  SizedBox(
                    height: 30,
                  ),
                  customButtonAuth(
                    text: 'Reset',
                    onPressed: () {
                      controller.goToSuccessReset();
                    },
                  ),
                ],
              ),
            ),
          );
        } ),
    );
  }
}
