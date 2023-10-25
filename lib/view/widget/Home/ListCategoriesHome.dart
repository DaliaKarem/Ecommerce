import 'package:ecommerce/controller/homePagecontroller.dart';
import 'package:ecommerce/data/model/categories.dart';
import 'package:ecommerce/view/screen/Home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ListCategoriesHome extends GetView<homePageControllerImp> {
  const ListCategoriesHome({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView.separated(
          separatorBuilder: (conntext, index) => SizedBox(
            width: 10,
          ),
          scrollDirection: Axis.horizontal,
          itemCount: controller.cate.length,
          itemBuilder: (conntext, index) {
            // String imagePath =
            //     "D:\\Xampp\\htdocs\\Ecommerce\\Images\\${controller.cate[index]['categry_img']}";
            return Cateories(categoriesModel: CategoriesModel.fromJson(controller.cate[index]),);
          }),
    );
  }
}
class Cateories extends StatelessWidget {
   Cateories({Key? key, required this.categoriesModel}) : super(key: key);
 final CategoriesModel categoriesModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //   Container(
        //   padding: EdgeInsets.symmetric(horizontal: 10),
        //   height: 50,
        //   width: 50,
        //   //"{D:\\Xampp\\htdocs\\Ecommerce\\Images}/${controller.cate[index]['categry_img']}"
        //   child: Image.file(File(imagePath)),
        // );
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: 10, vertical: 10),
          child: Text(
            "${categoriesModel.categryName}"
             // "${controller.cate[index]['categry_name']}"
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.indigo.shade100,
            //border: Border.all()
          ),
        )
      ],
    );
  }
}

