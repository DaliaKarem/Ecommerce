import 'package:ecommerce/core/const/routesName.dart';
import 'package:ecommerce/view/screen/auth/ForgetPassword//ForgetPass.dart';
import 'package:ecommerce/view/screen/auth/ForgetPassword/verifySignCode.dart';
import 'package:ecommerce/view/screen/auth/Login.dart';
import 'package:ecommerce/view/screen/auth/SignUp.dart';
import 'package:ecommerce/view/screen/auth/ForgetPassword//SuccessResetPass.dart';
import 'package:ecommerce/view/screen/auth/SuccessSignUp.dart';
import 'package:ecommerce/view/screen/auth/ForgetPassword//Verification.dart';
import 'package:ecommerce/view/screen/auth/ForgetPassword//resetPass.dart';
import 'package:ecommerce/view/screen/auth/checkEmail.dart';
import 'package:flutter/material.dart';
Map<String ,Widget Function(BuildContext)> routes={
  routeApp.Login:(context)=>Login(),
  routeApp.SignUp:(context)=>SignUp(),
  routeApp.SuccessSignUp:(context)=>SuccessSignUp(),

  routeApp.ForgetPass:(context)=>ForgetPass(),
  routeApp.resetPass:(context)=>resetPass(),
  routeApp.Verification:(context)=>Verification(),
  routeApp.SuccessResetPass:(context)=>SuccessResetPass(),
  routeApp.checkEmail:(context)=>checkEmail(),
  routeApp.verifySignCode:(context)=>verifySignCode(),


};