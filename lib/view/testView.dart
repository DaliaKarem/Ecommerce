import 'package:ecommerce/controller/testController.dart';
import 'package:ecommerce/core/class/handlingDataView.dart';
import 'package:ecommerce/core/const/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class testView extends StatelessWidget {
  const testView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(testController());
    return Scaffold(
        appBar: AppBar(
          title: Text("Test"),
          backgroundColor: colorApp.primary,
        ),
        body: GetBuilder<testController>(
          builder: (controller) {
            return handlingDataView(
                status: controller.status,
                widget: Container(
                  padding: EdgeInsets.all(20),
                  child: Container(
                    child: ListView.builder(
                      itemCount: controller.getdata.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Text("${controller.getdata}");
                      },
                    ),
                  ),
                ));
          },
        ));
  }
}
