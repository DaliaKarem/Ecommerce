import 'package:ecommerce/controller/testController.dart';
import 'package:ecommerce/core/class/satusReq.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class testView extends StatelessWidget {
  const testView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(testController());
    return Scaffold(
        appBar: AppBar(title: Text("Test"),),
        body: GetBuilder<testController>(
          builder: (controller) {
            if (controller.status == statusReq.loading) {
              return Center(child: Text("Loading....."),);
            }
            else if (controller.status == statusReq.offlineFail) {
              return Center(child: Text("offlineFail....."),);
            }
            else if (controller.status == statusReq.fail) {
              return Center(child: Text("Fail....."),);
            }
            else  {
              return Container(
                padding: EdgeInsets.all(20),
                child: Container(
                  child: ListView.builder(
                    itemCount: controller.getdata.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Text("${controller.getdata}");
                    },

                  ),
                ),
              );
          }
          },

        )
    );
  }
}


