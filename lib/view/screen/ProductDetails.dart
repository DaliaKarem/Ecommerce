import 'package:ecommerce/controller/ProductDetailsController.dart';
import 'package:ecommerce/core/const/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProductDetailsControllerImp controllerImp=Get.put(ProductDetailsControllerImp());
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.topRight,
                          colors: [colorApp.primary,colorApp.primary.withOpacity(0.5), colorApp.primary.withOpacity(0.3)]
                      ),
                      //color: colorApp.primary,
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(20))),
                ),
                Positioned(
                  top: 30,
                  right: 20,
                  left: 20,
                  child: Image.network(
                      "https://te.eg/wps/wcm/connect/a8dc2d00-df65-4ecc-a22a-6b24ece3b296/Samsung-Galaxy-A34.png?MOD=AJPERES&CACHEID=a8dc2d00-df65-4ecc-a22a-6b24ece3b296",height: 250,),
                )
              ],
            ),
            SizedBox(height: 100,),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text("${controllerImp.Items.itemName}",style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.black,fontSize: 20),),
                  (controllerImp.Items.itemDiscount != "0")
                      ? Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Row(
                      children: [
                        Text(
                          "\$${controllerImp.Items.itemPrice}",
                          style: Theme.of(context).textTheme.bodyText1!.copyWith(decoration: TextDecoration.lineThrough,)
                        ),
                        Text(
                          "\$${controllerImp.Items.itemDiscount}",
                        ),
                      ],
                    ),
                  )
                      : Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text(
                      "\$${controllerImp.Items.itemPrice}",
                    ),
                  ),

                  SizedBox(height: 10,),
                  Text("${controllerImp.Items.itemDesc}",style: Theme.of(context).textTheme.bodyText1)

                ],
              ),
            ),
            Row(
              children: [
                Container(
                    height: 60,
                    margin: EdgeInsets.all(20),
                    child: Text("Quantity")
                ) ,
                Container(
                    height: 60,
                    margin: EdgeInsets.all(20),
                    child: MaterialButton(
                        color: Colors.red,
                        onPressed: (){},
                        child:Text("Add To Cart")
                    )
                ),
              ],
            ) ,
          ],
        ),
      ),
    );
  }
}
