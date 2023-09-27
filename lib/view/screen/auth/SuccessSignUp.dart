import 'package:ecommerce/core/const/color.dart';
import 'package:ecommerce/view/widget/auth/customButtonAuth.dart';
import 'package:flutter/material.dart';
class SuccessSignUp extends StatelessWidget {
  const SuccessSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorApp.background,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "Success ",
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
     body: Container(
       padding: EdgeInsets.all(20),
       child: ListView(
         children: [
           Column(
             children: [
               Center(child: Icon(Icons.check_circle_outline,size: 200,color: colorApp.primary,)),
               Text("Sign Up Successfully",style: Theme.of(context).textTheme.bodyText1,),
               Spacer(),
               Container(
                 width: double.infinity,
                 child: customButtonAuth(
                   text: 'LogIn',
                   onPressed: () {
                     ;
                   },
                 ),
               ),
               SizedBox(height: 100,)
             ],
           ),
         ],
       )
     ),
    );
  }
}
