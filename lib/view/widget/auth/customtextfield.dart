import 'package:ecommerce/controller/Auth/LoginController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class customTextAuth extends StatelessWidget {
  customTextAuth(
      {Key? key,
      required this.text,
      required this.hinttext,
      required this.icons,
       required this.icon2,
      required this.control,
        required this.validator
      })
      : super(key: key);
  String text, hinttext;
   Widget icons,icon2;
  TextEditingController? control;
  bool isPress=false;
  String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginControllerImp>(
        builder: (controller)=>
            Obx(() =>TextFormField(
              validator: validator,
              obscureText: (text=="Password" && !controller.Press.value)?true:false,
              enableSuggestions:(text=="Password" && controller.Press==false)? true:false,
              autofocus: (text=="Password"&& controller.Press==false)?false:true,
              controller: control,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  label: Text(text),
                  hintText: hinttext,
                  suffix:InkWell(
                    child:(controller.Press.value)?icons:icon2 ,
                    onTap: (){
                     if(text=="Password") {
                       controller.Press.value = !controller.Press.value;
                     };
                    },
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
            )) );

  }
}
