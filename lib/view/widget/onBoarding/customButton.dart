import 'package:ecommerce/core/const/color.dart';
import 'package:flutter/material.dart';
class Button extends StatelessWidget {
   Button({Key? key,required this.text,required this.color,required this.textcolor}) : super(key: key);
  String text;
  Color textcolor,color;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialButton(
        height: 40,
        padding: EdgeInsets.symmetric(horizontal: 100,vertical:2 ),
        onPressed: (){},
        child: Text(text),
        color:color ,
        textColor:textcolor,
      ),
    );
  }
}

    