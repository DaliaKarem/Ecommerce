import 'package:ecommerce/core/const/routesName.dart';
import 'package:ecommerce/view/screen/auth/Login.dart';
import 'package:ecommerce/view/screen/auth/SignUp.dart';
import 'package:flutter/material.dart';
Map<String ,Widget Function(BuildContext)> routes={
  routeApp.Login:(context)=>Login(),
  routeApp.SignUp:(context)=>SignUp(),
};