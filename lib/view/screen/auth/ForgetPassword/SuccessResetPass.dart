import 'package:ecommerce/controller/Auth/SuccessResetController.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/view/widget/auth/customButtonAuth.dart';
import 'package:ecommerce/core/const/color.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SuccessResetPass extends StatelessWidget {
  const SuccessResetPass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SuccessResetControllerImp controllerImp=Get.put(SuccessResetControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorApp.background,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "Success  ",
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child:  Column(
          children: [
            Center(child: Icon(Icons.check_circle_outline,size: 200,color: colorApp.primary,)),
            Text("Congratulations",style: Theme.of(context).textTheme.headline1,),
            Text("Reset Password Successfully",style: Theme.of(context).textTheme.bodyText1,),
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

