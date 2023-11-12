import 'package:ecommerce/controller/FavController.dart';
import 'package:ecommerce/core/class/satusReq.dart';
import 'package:ecommerce/data/model/Fav.dart';
import 'package:ecommerce/view/widget/Fav/FavList.dart';
import 'package:ecommerce/view/widget/Home/customAppBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class Fav extends StatelessWidget {
  Fav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(FavControllerImp());

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
          GetBuilder<FavControllerImp>(builder: (controller) {
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
                    : BodyOfList();
          })
        ],
      ),
    );
  }
}
