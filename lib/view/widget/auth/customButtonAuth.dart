import 'package:ecommerce/core/const/color.dart';
import 'package:flutter/material.dart';

class customButtonAuth extends StatelessWidget {
  customButtonAuth({Key? key, required this.text,required this.onPressed}) : super(key: key);
  String text;
  void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
        ),
        padding: EdgeInsets.symmetric(vertical: 12),
        onPressed: onPressed,
        color: colorApp.primary,
        child:Text(text),
        textColor: Colors.white,
      ),
    );
  }
}
