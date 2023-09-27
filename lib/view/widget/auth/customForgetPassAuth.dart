import 'package:ecommerce/controller/Auth/LoginController.dart';
import 'package:ecommerce/core/const/color.dart';
import 'package:flutter/material.dart';
class customForgetPassAuth extends StatelessWidget {
  const customForgetPassAuth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controllerImp=LoginControllerImp();
    return InkWell(
       onTap: (){
         controllerImp.goToForget();
       },
      child: Text("Foget Password", textAlign: TextAlign.end,
        style: TextStyle(color: colorApp.grey),),
    );
  }
}
