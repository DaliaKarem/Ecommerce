import 'package:ecommerce/controller/Auth/ForgetPassController.dart';
import 'package:ecommerce/controller/Auth/checkEmailController.dart';
import 'package:ecommerce/core/const/color.dart';
import 'package:ecommerce/view/widget/auth/customButtonAuth.dart';
import 'package:ecommerce/view/widget/auth/customTitle.dart';
import 'package:ecommerce/view/widget/auth/customtextbody.dart';
import 'package:ecommerce/view/widget/auth/customtextfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ecommerce/view/widget/auth/textSignUporLogin.dart';

class checkEmail extends StatelessWidget {
  const checkEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    checkEmailControllerImp controllerImp = Get.put(checkEmailControllerImp());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: colorApp.background,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            "Check Email",
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          child: ListView(
            children: [
              SizedBox(
                height: 10,
              ),
              customTitle(text: "Success Sign Up"),
              SizedBox(
                height: 5,
              ),
              cstomtextbody(text: "Enter Your Email to Reset Password"),
              SizedBox(
                height: 40,
              ),
              customTextAuth(
                text: "Email",
                hinttext: "Enter your email",
                icons: Icon(Icons.email_outlined),
                icon2: Icon(Icons.email_outlined),
                control: controllerImp.email,
              ),
              SizedBox(
                height: 30,
              ),
              customButtonAuth(
                text: 'Check',
                onPressed: () {
                  controllerImp.goToVerifcation();
                },
              ),
            ],
          ),
        ));
  }
}
