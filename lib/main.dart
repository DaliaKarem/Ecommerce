import 'package:ecommerce/core/const/appTheme.dart';
import 'package:ecommerce/core/const/color.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:ecommerce/routes.dart';
import 'package:ecommerce/view/screen/onBoarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
await initialServies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme:themeData,
      home: onBoarding(),
      getPages: routes,
      // routes: routes
    );
  }
}
