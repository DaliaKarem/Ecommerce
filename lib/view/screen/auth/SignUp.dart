import 'package:ecommerce/controller/Auth/SignUpController.dart';
import 'package:ecommerce/core/class/satusReq.dart';
import 'package:ecommerce/core/const/color.dart';
import 'package:ecommerce/core/functions/ValidatorInput.dart';
import 'package:ecommerce/core/functions/alertExitApp.dart';
import 'package:ecommerce/view/widget/auth/customButtonAuth.dart';
import 'package:ecommerce/view/widget/auth/customTitle.dart';
import 'package:ecommerce/view/widget/auth/customtextbody.dart';
import 'package:ecommerce/view/widget/auth/customtextfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ecommerce/view/widget/auth/textSignUporLogin.dart';
import 'package:lottie/lottie.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(SignUpControllerImp());
    //SignUpControllerImp controllerImp2 = Get.lazyPut(()=>SignUpControllerImp(),fenix: true );
    //    GetInstance().lazyPut<S>(builder, tag: tag, fenix: fenix);

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
        body: WillPopScope(
            onWillPop: alertExitApp,
            child: GetBuilder<SignUpControllerImp>(
              builder: (controller) {
                return controller.status == statusReq.loading
                    ? Lottie.asset("assets/lottie/Loading.json")
                    : Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                        child: Form(
                          key: controller.formstate,
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
                                isNum: false,
                                validator: (val) {
                                  return ValidatorInput(
                                      "username", val!, 4, 15);
                                },
                                text: "UserName",
                                hinttext: "Enter your Name",
                                icons: Icon(Icons.person),
                                control: controller.userName,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              customTextAuth(
                                isNum: false,
                                validator: (val) {
                                  return ValidatorInput("email", val!, 10, 20);
                                },
                                text: "Email",
                                hinttext: "Enter your email",
                                icons: Icon(Icons.email_outlined),
                                control: controller.email,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              customTextAuth(
                                isNum: true,
                                validator: (val) {
                                  return ValidatorInput("phone", val!, 11, 13);
                                },
                                text: "Phone",
                                hinttext: "Enter your phoneNumber",
                                icons: Icon(Icons.phone),
                                control: controller.phone,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              GetBuilder<SignUpControllerImp>(
                                  builder: (Control) {
                                return customTextAuth(
                                  isNum: false,
                                  isPress: controller.Press,
                                  onTapIcon: () {
                                    controller.showPass();
                                  },
                                  validator: (val) {
                                    return ValidatorInput("pass", val!, 8, 15);
                                  },
                                  text: "Password",
                                  hinttext: "Enter Password",
                                  icons: Icon(Icons.visibility),
                                  icon2: Icon(Icons.visibility_off),
                                  control: controller.password,
                                );
                              }),
                              SizedBox(
                                height: 15,
                              ),
                              InkWell(
                                onTap: () {
                                  controller.goToForget();
                                },
                                child: Text(
                                  "Foget Password",
                                  textAlign: TextAlign.end,
                                  style: TextStyle(color: colorApp.grey),
                                ),
                              ),
                              customButtonAuth(
                                text: 'Sign Up',
                                onPressed: () {
                                  controller.SignUp();
                                },
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              textSignUporLogin(
                                textButton: 'Login',
                                text: "Have account already  ",
                                onTap: () {
                                  controller.goToLogin();
                                },
                              )
                            ],
                          ),
                        ),
                      );
              },
            )));
  }
}
