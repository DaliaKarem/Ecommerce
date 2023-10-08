import 'package:ecommerce/controller/Auth/verifySignCodeController.dart';
import 'package:ecommerce/core/class/satusReq.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/core/const/color.dart';
import 'package:ecommerce/view/widget/auth/customButtonAuth.dart';
import 'package:ecommerce/view/widget/auth/customTitle.dart';
import 'package:ecommerce/view/widget/auth/customtextbody.dart';
import 'package:ecommerce/view/widget/auth/customtextfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ecommerce/view/widget/auth/textSignUporLogin.dart';
import 'package:lottie/lottie.dart';

class verifySignCode extends StatelessWidget {
  const verifySignCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(verifySignCodeControllerImp());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: colorApp.background,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            "Check Verification Code",
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        body: GetBuilder<verifySignCodeControllerImp>(
          builder: (controller) =>
          controller.status==statusReq.loading?
        Lottie.asset("assets/lottie/Loading.json"):Container(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            child: ListView(
              children: [
                SizedBox(
                  height: 10,
                ),
                customTitle(text: "Check Code"),
                SizedBox(
                  height: 5,
                ),
                cstomtextbody(
                    text: "Please Enter the Digit Code sent to your Email"),
                SizedBox(
                  height: 40,
                ),
                OtpTextField(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  disabledBorderColor: colorApp.grey,
                  fieldWidth: 60,
                  numberOfFields: 5,
                  showFieldAsBox: true,
                  onCodeChanged: (String code) {},
                  onSubmit: (String verificationCode) {
                    controller.goToSuccess(verificationCode);
                  }, // end onSubmit
                ),
                // customTextAuth(
                //   text: "Email",
                //   hinttext: "Enter your email",
                //   icons: Icon(Icons.email_outlined),
                //   icon2: Icon(Icons.email_outlined),
                //   control: controllerImp.email,
                // ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ));
  }
}
