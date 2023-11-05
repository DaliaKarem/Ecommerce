import 'package:ecommerce/controller/ItemsController.dart';
import 'package:ecommerce/controller/homePagecontroller.dart';
import 'package:ecommerce/data/model/categories.dart';
import 'package:ecommerce/view/screen/Home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ListCategoriesItems extends GetView<ItemsControllerImp> {
  const ListCategoriesItems({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView.separated(
          separatorBuilder: (conntext, index) => SizedBox(
            width: 10,
          ),
          scrollDirection: Axis.horizontal,
          itemCount: controller.Cate.length,
          itemBuilder: (conntext, index) {
            // String imagePath =
            //     "D:\\Xampp\\htdocs\\Ecommerce\\Images\\${controller.cate[index]['categry_img']}";
            return Cateories(index:index,categoriesModel: CategoriesModel.fromJson(controller.Cate[index]),);
          }),
    );
  }
}
class Cateories extends GetView<ItemsControllerImp> {
  Cateories({Key? key, required this.index,required this.categoriesModel}) : super(key: key);
  final CategoriesModel categoriesModel;
  final int index;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        controller.gotoCate(index,categoriesModel.categryId);
      },
      child: GetBuilder<ItemsControllerImp>(
        builder: (controller) { return Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: 10, vertical: 10),
              child: Text(
                  "${categoriesModel.categryName}"
                // "${controller.cate[index]['categry_name']}"
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: controller.selected==index?Colors.indigo.shade100:null,
                //border: Border.all()
              ),
            )
          ],
        ); },

      ),
    );
  }
}

