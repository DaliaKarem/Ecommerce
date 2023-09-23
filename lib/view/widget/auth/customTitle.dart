import 'package:flutter/material.dart';

class customTitle extends StatelessWidget {
   customTitle({Key? key,required this.text}) : super(key: key);
String text;
  @override
  Widget build(BuildContext context) {
    return Text(
     text ,
      textAlign: TextAlign.center,
      style: Theme.of(context)
          .textTheme
          .headline1!
          .copyWith(color: Colors.black, fontSize: 30),
    );
  }
}
