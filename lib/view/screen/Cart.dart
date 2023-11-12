import 'package:ecommerce/controller/CartController.dart';
import 'package:ecommerce/core/class/satusReq.dart';
import 'package:ecommerce/view/widget/Cart/CartList.dart';
import 'package:ecommerce/view/widget/Home/customAppBar.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
class Cart extends StatelessWidget {
  Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(CartContollerImp());

    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          customAppBar(
            onPressed: () {},
            onPressedNoti: () {},
          ),
          GetBuilder<CartContollerImp>(builder: (controller) {
            return (controller.status == statusReq.loading)
                ? Lottie.asset("assets/lottie/Loading.json")
            //       : GridView.builder(
            //           shrinkWrap: true,
            //           physics: NeverScrollableScrollPhysics(),
            //           itemCount: controller.fav.length,
            //           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //               childAspectRatio: 0.6, crossAxisCount: 2),
            //           itemBuilder: (context, index) {
            //             // controller.isFav[controller.fav[index]['item_id']] =
            //             //     controller.fav[index]['favorites'];
            //             return CustomItems(
            //               items: controller.fav[index],
            //             );
            //           });
            // })
                : (controller.status == statusReq.fail)
                ? Lottie.asset("assets/lottie/Fail.json")
                : BodyOfCartList();
          })
        ],
      ),
    );
  }
}
