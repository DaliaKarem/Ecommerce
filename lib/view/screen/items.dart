import 'package:ecommerce/controller/ItemsController.dart';
import 'package:ecommerce/core/const/color.dart';
import 'package:ecommerce/view/widget/Home/ListCategoriesHome.dart';
import 'package:ecommerce/view/widget/Home/customAppBar.dart';
import 'package:ecommerce/view/widget/Items/ListCategoriesItems.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Items extends StatelessWidget {
  const Items({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ItemsControllerImp());
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            customAppBar(onPressed:() {},onPressedNoti: (){},),
            SizedBox(
              height: 20,
            ),
            ListCategoriesItems(),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 12,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(childAspectRatio: 0.7,crossAxisCount: 2),
              itemBuilder: (context, index) {
                // Item builder function
                return Container(

                  child: InkWell(
                    onTap: () {
                      print("Clicked");
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
                                  icon: Icon(Icons.favorite, color: Colors.red),
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ),
                          Text("Smart Phone",style: TextStyle(fontWeight: FontWeight.bold,),),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 18.0),
                                child: Text("\$22"),
                              ),
                              Spacer(),
                              IconButton(onPressed: (){}, icon: Icon(Icons.add_shopping_cart))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            )          ],
        ),
      ),
    );
  }
}
