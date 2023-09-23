import 'package:flutter/material.dart';

class cstomtextbody extends StatelessWidget {
   cstomtextbody({Key? key,required this.text}) : super(key: key);
  String text;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 40),
        child: Text(
          text,
          style: Theme.of(context).textTheme.bodyText1,
          textAlign: TextAlign.center,
        ));
  }
}
