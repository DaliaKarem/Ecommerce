import 'package:ecommerce/controller/FavController.dart';
import 'package:ecommerce/core/class/satusReq.dart';
import 'package:ecommerce/core/const/color.dart';
import 'package:ecommerce/data/model/Fav.dart';
import 'package:ecommerce/data/model/items.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:lottie/lottie.dart';

class BodyOfList extends GetView<FavControllerImp> {
  const BodyOfList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: controller.fav.length,
        itemBuilder: (context, i) {
          return Body(favModel: controller.fav[i]);
        },
        separatorBuilder: (context, index) => SizedBox(height: 10),
      ),
    );
  }
}

class Body extends GetView<FavControllerImp> {
  Body({Key? key, required this.favModel}) : super(key: key);

  final FavModel favModel;

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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 4,
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
                           ListTile(title: Text("${favModel.itemPrice}")),
                          Row(
                            children: [

                              MaterialButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                padding:
                                EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                                onPressed: () {},
                                child: Text("Add to Cart"),
                                color: colorApp.primary,
                              ),
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
                          )
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

//
//
// class CustomItems extends GetView<FavControllerImp> {
//   CustomItems({Key? key, required this.items}) : super(key: key);
//   final FavModel items;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: InkWell(
//         onTap: () {
//           print("Clcked");
//           //controller.gotoProductDetails(items);
//         },
//         child: Card(
//           child: Column(
//             children: [
//               Stack(
//                 children: [
//                   Container(
//                     padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
//                     // margin: EdgeInsets.symmetric(horizontal: 10),
//                     child: Image.network(
//                       "https://img.fruugo.com/product/9/89/535273899_max.jpg",
//                       height: 130,
//                       fit: BoxFit.fill,
//                     ),
//                   ),
//                   // GetBuilder<FavControllerImp>
//                   //   (builder: (context)=>   Positioned(
//                   //   top: -5,
//                   //   right: 2,
//                   //   child: IconButton(
//                   //     icon: Icon((context.isFav[items.itemId]=="1")?Icons.favorite:Icons.favorite_outline, color: Colors.red),
//                   //     onPressed: () {
//                   //       if(context.isFav[items.itemId]=="1")
//                   //       {
//                   //         context.setFav(items.itemId,"0");
//                   //         context.removeFromFav(items.itemId);
//                   //       }
//                   //       else{
//                   //         context.setFav(items.itemId,"1");
//                   //         context.addtoFav(items.itemId);
//                   //       }
//                   //       //controller.addToFav(items.itemId);
//                   //     },
//                   //   ),
//                   // ),),
//                   (items.itemDiscount != "0")?Positioned(
//                       top: -5,
//                       left: 2,
//                       //Container(
//                       //                           width: double.infinity,
//                       //                           height: 50,w
//                       //                           decoration: BoxDecoration(
//                       //                               color: Colors.white,
//                       //                               borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30),),
//                       //                               boxShadow: [
//                       //                                 BoxShadow(
//                       //                                     blurRadius: 7,
//                       //                                     color: Color(0xffecedf1),
//                       //                                     spreadRadius: 4)
//                       //                               ]),
//                       //                         child: Text("\$${items.itemDiscount}"),
//                       //                       )
//                       child: Container(
//                         padding: EdgeInsets.all(5),
//                         height: 30,
//                         width: 40,
//                         decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.only(
//                               topLeft: Radius.circular(30),
//                               bottomLeft: Radius.circular(30),
//                               bottomRight: Radius.circular(30),
//                             ),
//                             boxShadow: [
//                               BoxShadow(
//                                   blurRadius: 7,
//                                   color: Color(0xffecedf1),
//                                   spreadRadius: 4)
//                             ]),
//                         child: Text("\$${items.itemDiscount}"),
//                       )
//                   ):Positioned(child: Text("")),
//                 ],
//               ),
//               Text(
//                 "${items.itemName}",
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(height: 5,),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text("Rating 3.5",textAlign: TextAlign.center,),
//                   Row(
//                     children: [
//                       ...List.generate(5, (index) => Icon(Icons.star,size: 15,color: Colors.orange,))
//                     ],
//                   )
//                 ],
//               ),
//               Row(
//                 children: [
//                   (items.itemDiscount != "0")
//                       ? Padding(
//                     padding: const EdgeInsets.only(left: 18.0),
//                     child: Row(
//                       children: [
//                         Text(
//                           "\$${items.itemPrice}",
//                           style: TextStyle(
//                             decoration: TextDecoration.lineThrough,
//                           ),
//                         ),
//                         // Text(
//                         //   "\$${controller.calcDis(items.itemPrice!, items.itemDiscount!)}",
//                         // ),
//                       ],
//                     ),
//                   )
//                       : Padding(
//                     padding: const EdgeInsets.only(left: 18.0),
//                     child: Text(
//                       "\$${items.itemPrice}",
//                     ),
//                   ),
//                   Spacer(),
//                   IconButton(
//                       onPressed: () {}, icon: Icon(Icons.add_shopping_cart)),
//                  GetBuilder<FavControllerImp>(builder: (controller){
//                    return  IconButton(
//                      icon: Icon(
//                        Icons.restore_from_trash_rounded,
//                        color: Colors.red,
//                      ),
//                      onPressed: () {
//                        controller.removeFrompage(items.itemId!);
//                        print("Removed");
//                      },
//                    );
//                  })
//                 ],
//               )
//             ],
//           ),)
//         ,
//       )
//       ,
//     );
//   }
// }
