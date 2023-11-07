import 'package:ecommerce/controller/ItemsController.dart';
import 'package:ecommerce/core/const/color.dart';
import 'package:ecommerce/data/model/items.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class customListItems extends GetView<ItemsControllerImp> {
  const customListItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ItemsControllerImp>(builder: (controller) {
      return GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: controller.items.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 0.6, crossAxisCount: 2),
          itemBuilder: (context, index) {
            // Item builder function
            return Items(
              items: itemModel.fromJson(controller.items[index]),
              fav:true
            );
          });
    });
  }
}

class Items extends GetView<ItemsControllerImp> {
  Items({Key? key, required this.items,required this.fav}) : super(key: key);
  final itemModel items;
  final bool fav;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () {
          print("Clcked");
          controller.gotoProductDetails(items);
        },
        child: Card(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                    // margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Image.network(
                      "https://img.fruugo.com/product/9/89/535273899_max.jpg",
                      height: 130,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    top: -5,
                    right: 2,
                    child: IconButton(
                      icon: Icon((fav==true)?Icons.favorite:Icons.favorite_outline, color: Colors.red),
                      onPressed: () {},
                    ),
                  ),
                  (items.itemDiscount != "0")?Positioned(
                      top: -5,
                      left: 2,
                      //Container(
                      //                           width: double.infinity,
                      //                           height: 50,w
                      //                           decoration: BoxDecoration(
                      //                               color: Colors.white,
                      //                               borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30),),
                      //                               boxShadow: [
                      //                                 BoxShadow(
                      //                                     blurRadius: 7,
                      //                                     color: Color(0xffecedf1),
                      //                                     spreadRadius: 4)
                      //                               ]),
                      //                         child: Text("\$${items.itemDiscount}"),
                      //                       )
                      child: Container(
                        padding: EdgeInsets.all(5),
                        height: 30,
                        width: 40,
                          decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  bottomLeft: Radius.circular(30),
                                  bottomRight: Radius.circular(30),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 7,
                                      color: Color(0xffecedf1),
                                      spreadRadius: 4)
                                ]),
                            child: Text("\$${items.itemDiscount}"),
                      )
                  ):Positioned(child: Text("")),
                ],
              ),
              Text(
                "${items.itemName}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
             SizedBox(height: 5,),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text("Rating 3.5",textAlign: TextAlign.center,),
                 Row(
                   children: [
                     ...List.generate(5, (index) => Icon(Icons.star,size: 15,color: Colors.orange,))
                   ],
                 )
               ],
             ),
              Row(
                children: [
                  (items.itemDiscount != "0")
                      ? Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Row(
                      children: [
                        Text(
                          "\$${items.itemPrice}",
                          style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                        Text(
                          "\$${controller.calcDis(items.itemPrice!, items.itemDiscount!)}",
                        ),
                      ],
                    ),
                  )
                      : Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text(
                      "\$${items.itemPrice}",
                    ),
                  ),
                  Spacer(),
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.add_shopping_cart))
                ],
              )
            ],
          ),)
        ,
      )
      ,
    );
  }
}
