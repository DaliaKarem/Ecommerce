import 'package:ecommerce/core/const/routesName.dart';
import 'package:ecommerce/core/middelware/middelware.dart';
import 'package:ecommerce/view/screen/Home.dart';
import 'package:ecommerce/view/screen/HomeScreen.dart';
import 'package:ecommerce/view/screen/ProductDetails.dart';
import 'package:ecommerce/view/screen/auth/ForgetPassword//ForgetPass.dart';
import 'package:ecommerce/view/screen/auth/ForgetPassword/verifySignCode.dart';
import 'package:ecommerce/view/screen/auth/Login.dart';
import 'package:ecommerce/view/screen/auth/SignUp.dart';
import 'package:ecommerce/view/screen/auth/ForgetPassword//SuccessResetPass.dart';
import 'package:ecommerce/view/screen/auth/SuccessSignUp.dart';
import 'package:ecommerce/view/screen/auth/ForgetPassword//Verification.dart';
import 'package:ecommerce/view/screen/auth/ForgetPassword//resetPass.dart';
import 'package:ecommerce/view/screen/items.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:ecommerce/view/screen/onBoarding.dart';

// Map<String ,Widget Function(BuildContext)> routes={
//   routeApp.Login:(context)=>Login(),
//   routeApp.SignUp:(context)=>SignUp(),
//   routeApp.SuccessSignUp:(context)=>SuccessSignUp(),
//
//   routeApp.ForgetPass:(context)=>ForgetPass(),
//   routeApp.resetPass:(context)=>resetPass(),
//   routeApp.Verification:(context)=>Verification(),
//   routeApp.SuccessResetPass:(context)=>SuccessResetPass(),
//   routeApp.verifySignCode:(context)=>verifySignCode(),
//
// };

List<GetPage<dynamic>>?routes=[
  GetPage(name: "/", page:()=> onBoarding(),middlewares: [middelware()]),

  GetPage(name: routeApp.Login, page:()=>Login()),
  GetPage(name: routeApp.SignUp, page:()=>SignUp()),
  GetPage(name: routeApp.SuccessSignUp, page:()=>SuccessSignUp()),

  GetPage(name: routeApp.ForgetPass, page:()=>ForgetPass()),
  GetPage(name: routeApp.resetPass, page:()=>resetPass()),
  GetPage(name: routeApp.Verification, page:()=>Verification()),
  GetPage(name: routeApp.SuccessResetPass, page:()=>SuccessResetPass()),
  GetPage(name: routeApp.verifySignCode, page:()=>verifySignCode()),



  GetPage(name: routeApp.Home, page:()=>HomeScreen()),
  GetPage(name: routeApp.Items, page:()=>Items()),
  GetPage(name: routeApp.ProductDetails, page:()=>ProductDetails()),


];