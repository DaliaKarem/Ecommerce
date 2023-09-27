import 'package:ecommerce/controller/Auth/resetPassController.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/core/const/color.dart';
import 'package:ecommerce/view/widget/auth/customButtonAuth.dart';
import 'package:ecommerce/view/widget/auth/customTitle.dart';
import 'package:ecommerce/view/widget/auth/customtextbody.dart';
import 'package:ecommerce/view/widget/auth/customtextfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ecommerce/view/widget/auth/textSignUporLogin.dart';

class resetPass extends StatelessWidget {
  const resetPass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    resetPassControllerImp controllerImp = Get.put(resetPassControllerImp());
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
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          child: ListView(
            children: [
              SizedBox(
                height: 10,
              ),
              customTitle(text: "Check Email"),
              SizedBox(
                height: 5,
              ),
              cstomtextbody(text: "Enter Your New Password to Reset Password"),
              SizedBox(
                height: 40,
              ),
              customTextAuth(
                text: "Password",
                hinttext: "Enter Password",
                icons: Icon(Icons.visibility),
                icon2: Icon(Icons.visibility_off),
                control: controllerImp.Pass,
              ),
              SizedBox(
                height: 30,
              ),
              customTextAuth(
                text: "Confirm Password",
                hinttext: "Re Enter Password",
                icons: Icon(Icons.visibility),
                icon2: Icon(Icons.visibility_off),
                control: controllerImp.Pass,
              ),
              SizedBox(
                height: 30,
              ),
              customButtonAuth(
                text: 'Reset',
                onPressed: () {
                  controllerImp.goToSuccessReset();
                },
              ),
            ],
          ),
        ));
  }
}
