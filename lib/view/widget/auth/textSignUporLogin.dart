import 'package:ecommerce/core/const/color.dart';
import 'package:flutter/material.dart';
class textSignUporLogin extends StatelessWidget {
  textSignUporLogin({Key? key,required this.textButton,required this.text,required this.onTap}) : super(key: key);
  String text,textButton;
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text),
        InkWell(
          onTap: onTap,
          child: Text(textButton,style: TextStyle(fontWeight: FontWeight.bold,color: colorApp.primary),),)
      ],
    );
  }
}
