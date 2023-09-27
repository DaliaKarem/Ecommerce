import 'package:ecommerce/controller/Auth/SuccessSignUpController.dart';
import 'package:ecommerce/core/const/color.dart';
import 'package:ecommerce/view/widget/auth/customButtonAuth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
class SuccessSignUp extends StatelessWidget {
  const SuccessSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SuccessSignUpControllerImp controllerImp=Get.put(SuccessSignUpControllerImp());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorApp.background,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "Success ",
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
     body: Container(
       padding: EdgeInsets.all(20),
       child: Column(
         children: [
           Center(child: Icon(Icons.check_circle_outline,size: 200,color: colorApp.primary,)),
           Text("Sign Up Successfully",style: Theme.of(context).textTheme.bodyText1,),
           Spacer(),
           Container(
             width: double.infinity,
             child: customButtonAuth(
               text: 'LogIn',
               onPressed: () {
                 controllerImp.goToLogin();
               },
             ),
           ),
           SizedBox(height: 100,)
         ],
       ),
     ),
    );
  }
}
