import 'package:ecommerce/controller/CartController.dart';
import 'package:ecommerce/controller/FavController.dart';
import 'package:ecommerce/core/class/satusReq.dart';
import 'package:ecommerce/core/const/color.dart';
import 'package:ecommerce/data/model/Cart.dart';
import 'package:ecommerce/data/model/Fav.dart';
import 'package:ecommerce/data/model/items.dart';
import 'package:ecommerce/view/widget/ProuctDetails/PriceAmount.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:lottie/lottie.dart';

class BodyOfCartList extends GetView<CartContollerImp> {
  const BodyOfCartList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: controller.cart.length,
        itemBuilder: (context, i) {
          return Body(favModel: controller.cart[i]);
        },
        separatorBuilder: (context, index) => SizedBox(height: 10),
      ),
    );
  }
}

class Body extends GetView<FavControllerImp> {
  Body({Key? key, required this.favModel}) : super(key: key);

  final CartModel favModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Card(
              child: Container(
                width: double.infinity,
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Image.network(
                        "https://img.fruugo.com/product/9/89/535273899_max.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          ListTile(
                            title: Text("${favModel.itemName}"),
                          ),
                          //ListTile(title: Text("${favModel.itemPrice}")),
                          //PriceAmount(Amount: "2", add: (){}, min: (){}),

                          Row(
                            children: [
                              Expanded(
                                flex: 5,
                                child: PriceAmount(Amount: "2", add: () {}, min: () {}),
                              ),
                              Expanded(
                                flex: 2,
                                child: ListTile(title: Text("${favModel.itemPrice}")),
                              ),

                            ],
                          ),
                          Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: MaterialButton(

                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                                    onPressed: () {},
                                    child: Text("Add to Cart"),
                                    color: colorApp.primary,
                                  ),
                                ),
                                Spacer(),
                                IconButton(
                                  icon: Icon(
                                    Icons.restore_from_trash_rounded,
                                    color: Colors.red,
                                  ),
                                  onPressed: () {
                                    controller.removeFrompage(favModel.itemId!);
                                    print("Removed");
                                  },
                                ),
                              ],
                            ),

                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
