import 'package:ecommerce/controller/homePagecontroller.dart';
import 'package:ecommerce/data/model/items.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ListItemsHome extends GetView<homePageControllerImp> {
  const ListItemsHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.builder(
          itemCount: controller.items.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, i) {
            return Products(ItemModel: itemModel.fromJson(controller.items[i]));
          }
          ),
    );
  }
}
class Products extends StatelessWidget {
  final itemModel ItemModel;
  Products({Key? key, required this.ItemModel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: 10, vertical: 20),
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Image.network(
            "https://img.fruugo.com/product/9/89/535273899_max.jpg",
            height: 100,
            width: 150,
            fit: BoxFit.fill,
          ),
        ),
        Container(
          height: 130,
          width: 180,
          decoration: BoxDecoration(
              color: Colors.indigo.withOpacity(0.3),
              borderRadius: BorderRadius.circular(20)),
        ),
        Positioned(
            top: 5,
            left: 10,
            child: Text(
              "${ItemModel.itemName}",
              //"${controller.items[i]['item_name']}",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            )),
        Positioned(
            top: -5,
            right: 2,
            child: IconButton(
              icon: Icon(Icons.favorite,color: Colors.red,),
              onPressed: (){},
            )
        ),
      ],
    );
  }
}
