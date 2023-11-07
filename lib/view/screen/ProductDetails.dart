import 'package:ecommerce/controller/ProductDetailsController.dart';
import 'package:ecommerce/core/const/color.dart';
import 'package:ecommerce/view/widget/ProuctDetails/PriceAmount.dart';
import 'package:ecommerce/view/widget/ProuctDetails/ProductDetailsDesign.dart';
import 'package:ecommerce/view/widget/ProuctDetails/ProductImageDesign.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProductDetailsControllerImp controllerImp =
        Get.put(ProductDetailsControllerImp());
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            ProductImageDesign(),
            SizedBox(
              height: 100,
            ),
            ProductDetailsDesign(
              itemName: controllerImp.Items.itemName,
              categryName: controllerImp.Items.categryName,
              itemDesc: controllerImp.Items.itemDesc,
              itemDiscount: controllerImp.Items.itemDiscount,
              itemPrice: controllerImp.Items.itemPrice,
              res: controllerImp.res,
            ),
            Row(
              children: [
                PriceAmount(Amount: "12",add: (){},min: (){},),
                Container(
                    height: 60,
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: colorApp.primary,

                    ),
                    child: MaterialButton(
                      
                        onPressed: () {
                          print("Add to Cart");
                        },
                        child: Text("Add To Cart"))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
