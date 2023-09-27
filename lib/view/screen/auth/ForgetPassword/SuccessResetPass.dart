import 'package:flutter/material.dart';
import 'package:ecommerce/view/widget/auth/customButtonAuth.dart';
import 'package:ecommerce/core/const/color.dart';

class SuccessResetPass extends StatelessWidget {
  const SuccessResetPass({Key? key}) : super(key: key);

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
                Text("Reset Password Successfully",style: Theme.of(context).textTheme.bodyText1,),
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
        ),
      ),
    );
  }
}

