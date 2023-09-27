import 'package:ecommerce/controller/Auth/LoginController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class customTextAuth extends StatelessWidget {
  customTextAuth(
      {Key? key,
        this.isPress,
        this.onTapIcon,
      required this.text,
      required this.hinttext,
      required this.icons,
        this.icon2,
      required this.control,
        required this.validator, required this.isNum
      })
      : super(key: key);
  String text, hinttext;
   Icon? icons,icon2;
  TextEditingController? control;
  bool ?isPress;
  final bool isNum;
  final void Function()?onTapIcon;
  String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginControllerImp>(
        builder: (controller)=>
            TextFormField(
              keyboardType:isNum ?TextInputType.numberWithOptions(decimal: true):TextInputType.text ,
              validator: validator,
              obscureText: isPress==null || isPress==false ?false:true,
              // enableSuggestions:(text=="Password" && controller.Press==false)? true:false,
              // autofocus: (text=="Password"&& controller.Press==false)?false:true,
              controller: control,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  label: Text(text),
                  hintText: hinttext,
                  suffixIcon:InkWell(
                    child:isPress==null || isPress==false ? icons:icon2 ,
                    onTap: onTapIcon,

                  ),
                  // IconButton(
                  //   icon:(controller.Press==true)?icons :icon2,
                  //   onPressed: () {
                  //     controller.visability(isPress);
                  //     print(isPress);
                  //     print("////");
                  //   },
                  // ),

                  hintStyle: TextStyle(fontSize: 14),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
            ));

  }
}
