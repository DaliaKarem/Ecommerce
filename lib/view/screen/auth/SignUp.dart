import 'package:ecommerce/controller/Auth/SignUpController.dart';
import 'package:ecommerce/core/const/color.dart';
import 'package:ecommerce/view/widget/auth/customButtonAuth.dart';
import 'package:ecommerce/view/widget/auth/customForgetPassAuth.dart';
import 'package:ecommerce/view/widget/auth/customTitle.dart';
import 'package:ecommerce/view/widget/auth/customtextbody.dart';
import 'package:ecommerce/view/widget/auth/customtextfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ecommerce/view/widget/auth/textSignUporLogin.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controllerImp = Get.put(SignUpControllerImp());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: colorApp.background,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            "Sign Up",
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
              customTitle(text: "Welcome Back"),
              SizedBox(
                height: 5,
              ),
              cstomtextbody(
                  text:
                      "Sign Up with your Email and Password or Continue with Social Media"),
              SizedBox(
                height: 50,
              ),
              customTextAuth(
                text: "UserName",
                hinttext: "Enter your Name",
                icons: Icon(Icons.person),
                icon2: Icon(Icons.person),
                control: controllerImp.userName,
              ),
              SizedBox(
                height: 20,
              ),
              customTextAuth(
                text: "Email",
                hinttext: "Enter your email",
                icons: Icon(Icons.email_outlined),
                icon2: Icon(Icons.email_outlined),
                control: controllerImp.email,
              ),
              SizedBox(
                height: 20,
              ),
              customTextAuth(
                text: "Phone",
                hinttext: "Enter your phoneNumber",
                icons: Icon(Icons.phone),
                icon2: Icon(Icons.phone),
                control: controllerImp.phone,
              ),
              SizedBox(
                height: 20,
              ),
              customTextAuth(
                text: "Password",
                hinttext: "Enter Password",
                icons: Icon(Icons.visibility),
                icon2: Icon(Icons.visibility_off),
                control: controllerImp.password,
              ),
              SizedBox(
                height: 15,
              ),
              customForgetPassAuth(),
              customButtonAuth(
                text: 'Sign Up',
                onPressed: () {
                  controllerImp.SignUp();
                },
              ),
              SizedBox(
                height: 30,
              ),
              textSignUporLogin(
                textButton: 'Login',
                text: "Have account already  ",
                onTap: () {
                  controllerImp.goToLogin();
                },
              )
            ],
          ),
        ));
  }
}
