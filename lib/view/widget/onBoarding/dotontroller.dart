import 'package:ecommerce/core/const/color.dart';
import 'package:ecommerce/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
class dotcontroller extends StatelessWidget {
  const dotcontroller({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
            onBoardingList.length,
                (index) => AnimatedContainer(
              margin: EdgeInsets.only(right:8),
              duration: Duration(microseconds: 500),
              width: 5,
              height: 5,
              decoration: BoxDecoration(
                  color: colorApp.primary,
                  borderRadius: BorderRadius.circular(10)),
            ))
      ],
    );
  }
}
