import 'package:ecommerce/controller/forgetPass/ForgetPassController.dart';
import 'package:ecommerce/core/class/satusReq.dart';
import 'package:ecommerce/core/const/color.dart';
import 'package:ecommerce/core/functions/ValidatorInput.dart';
import 'package:ecommerce/view/widget/auth/customButtonAuth.dart';
import 'package:ecommerce/view/widget/auth/customTitle.dart';
import 'package:ecommerce/view/widget/auth/customtextbody.dart';
import 'package:ecommerce/view/widget/auth/customtextfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ecommerce/view/widget/auth/textSignUporLogin.dart';
import 'package:lottie/lottie.dart';

class ForgetPass extends StatelessWidget {
  const ForgetPass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     Get.put(ForgetPassControllerImp());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: colorApp.background,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            "Forget Password",
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        body: GetBuilder<ForgetPassControllerImp>(builder: ( controller) {
          return controller.status==statusReq.loading?
          Lottie.asset("assets/lottie/Loading.json"):
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
                  cstomtextbody(text: "Enter Your Email to Reset Password"),
                  SizedBox(
                    height: 40,
                  ),

                  customTextAuth(
                    isNum: false,

                    validator: (val){
                      return ValidatorInput("email",val! , 10, 20);
                    },
                    text: "Email",
                    hinttext: "Enter your email",
                    icons: Icon(Icons.email_outlined),
                    control: controller.email,),
                  SizedBox(
                    height: 30,
                  ),
                  customButtonAuth(
                    text: 'Check',
                    onPressed: () {
                      controller.checkEmail();
                    },
                  ),
                ],
              ),
            ),
          );
        },)
    );
  }
}
