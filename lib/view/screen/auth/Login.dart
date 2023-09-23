import 'package:ecommerce/controller/LoginController.dart';
import 'package:ecommerce/core/const/color.dart';
import 'package:ecommerce/view/widget/auth/customButtonAuth.dart';
import 'package:ecommerce/view/widget/auth/customTitle.dart';
import 'package:ecommerce/view/widget/auth/customtextbody.dart';
import 'package:ecommerce/view/widget/auth/customtextfield.dart';
import 'package:ecommerce/view/widget/auth/textSignUporLogin.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   LoginControllerImp controllerImp= Get.put(LoginControllerImp());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: colorApp.background,
          elevation: 0.0,
          centerTitle: true,
          title: Text("Sign in", style: Theme
              .of(context)
              .textTheme
              .headline1,),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: ListView(
            children: [
              SizedBox(height: 10,),
              customTitle(text: "Welcome Back"),
              SizedBox(height: 5,),
              cstomtextbody(
                  text: "Sign in with your Email and Password or Continue with Social Media"),
              SizedBox(height: 50,),
              customTextAuth(text: "Email",
                hinttext: "Enter your email",
                icons: Icon(Icons.email_outlined),
                icon2: Icon(Icons.email_outlined), control: controllerImp.email,),
              SizedBox(height: 20,),
              customTextAuth(text: "Password",
                hinttext: "Enter Password",
                icons: Icon(Icons.visibility),
                icon2: Icon(Icons.visibility_off),control: controllerImp.password ,),
              SizedBox(height: 15,),
              Text("Foget Password", textAlign: TextAlign.end,
                style: TextStyle(color: colorApp.grey),),
              customButtonAuth(text: 'Login', onPressed: () {},),
              SizedBox(height: 30,),
              textSignUporLogin(
                textButton: 'SignUp',
                text: "Don't have an account ? ",
                onTap: () {
                  controllerImp.goToSignUp();
                },)
            ],
          ),
        )
    );
  }
}
