import 'package:ecommerce/core/const/color.dart';
import 'package:ecommerce/data/datasource/static/static.dart';
import 'package:flutter/material.dart';

class onBoarding extends StatelessWidget {
  const onBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: PageView.builder(
          itemCount: onBoardingList.length,
          itemBuilder: (context, i) {
            return Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top:30),
                  child: Text(
                    onBoardingList[i].title!,
                    style: TextStyle(fontSize:25,fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 10,),
                Image.network(onBoardingList[i].img!,height:300,width: double.infinity,),
                SizedBox(height: 20,),
                Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Text(onBoardingList[i].body!,style: TextStyle(fontSize: 15,height:2,color: colorApp.grey),textAlign: TextAlign.center,),
                ),
              ],
            );
          }),
    ));
  }
}
