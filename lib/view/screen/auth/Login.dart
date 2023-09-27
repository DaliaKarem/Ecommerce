import 'package:ecommerce/controller/Auth/LoginController.dart';
import 'package:ecommerce/core/const/color.dart';
import 'package:ecommerce/core/functions/ValidatorInput.dart';
import 'package:ecommerce/view/widget/auth/customButtonAuth.dart';
import 'package:ecommerce/view/widget/auth/customForgetPassAuth.dart';
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
          child: Form(
            key: controllerImp.formstate,
            child: ListView(
              children: [
                SizedBox(height: 10,),
                customTitle(text: "Welcome Back"),
                SizedBox(height: 5,),
                cstomtextbody(
                    text: "Sign in with your Email and Password or Continue with Social Media"),
                SizedBox(height: 50,),
                customTextAuth(
                  validator: (val){
                    return ValidatorInput("email",val! , 10, 20);
                  },
                  text: "Email",
                  hinttext: "Enter your email",
                  icons: Icon(Icons.email_outlined),
                  icon2: Icon(Icons.email_outlined), control: controllerImp.email,),
                SizedBox(height: 20,),
                customTextAuth(
                  validator: (val){
                    return ValidatorInput("pass",val! , 8, 15);
                  },
                  text: "Password",
                  hinttext: "Enter Password",
                  icons: Icon(Icons.visibility),
                  icon2: Icon(Icons.visibility_off),control: controllerImp.password ,),
                SizedBox(height: 15,),
                customForgetPassAuth(),
                customButtonAuth(text: 'Login', onPressed: () {
                  controllerImp.login();
                },),
                SizedBox(height: 30,),
                textSignUporLogin(
                  textButton: 'SignUp',
                  text: "Don't have an account ? ",
                  onTap: () {
                    controllerImp.goToSignUp();
                  },)
              ],
            ),
          ),
        )
    );
  }
}
