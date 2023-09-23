import 'package:ecommerce/controller/onboadingcontroller.dart';
import 'package:ecommerce/core/const/color.dart';
import 'package:ecommerce/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class slidder extends GetView<onBoardingControllerImp> {
  const slidder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged:(val){
        print("page is $val");
        controller.dotChange(val);
      } ,
        itemCount: onBoardingList.length,
        itemBuilder: (context, i) {
          return Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Text(
                  onBoardingList[i].title!,
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Image.asset(
                onBoardingList[i].img!,
                height: 300,
                width: double.infinity,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: Text(
                  onBoardingList[i].body!,
                  style:Theme.of(context).textTheme.bodyText1,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          );
        });
  }
}
