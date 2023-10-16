import 'dart:io';

import 'package:ecommerce/controller/homePagecontroller.dart';
import 'package:ecommerce/core/class/satusReq.dart';
import 'package:ecommerce/core/const/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(homePageControllerImp());
    return Scaffold(
      body: GetBuilder<homePageControllerImp>(
        builder: ( controller) {
          return controller.status == statusReq.loading
              ? Lottie.asset("assets/lottie/Loading.json")
              :Container(
              child: ListView(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    margin: EdgeInsets.only(top: 30),
                    child: Row(
                      children: [
                        Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: 'Search.. ',
                                  prefixIcon: IconButton(
                                    onPressed: (){},
                                    icon: Icon(Icons.search),
                                  ),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.all(Radius.circular(20))),
                                  filled: true,
                                  fillColor: Colors.grey[300]),
                            )),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius:BorderRadius.all(Radius.circular(15))
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.notifications_active_outlined,color: Colors.grey[400],),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Stack(
                      children: [
                        Container(
                          height: 150,
                          decoration: BoxDecoration(
                              color: colorApp.primary,
                              borderRadius: BorderRadius.all(Radius.circular(12))
                          ),
                          child: ListTile(
                            title: Text("Discount",style: TextStyle(color: Colors.grey[400],fontSize: 30),),
                            subtitle: Text("Here is great Offer \n 20%OFF",style: TextStyle(color: Colors.grey[400],fontSize: 15),),

                          ),
                        ),
                        Positioned(
                            top: -20,
                            right: -20,
                            child:Container(
                              height: 155,width: 155,
                              decoration: BoxDecoration(
                                  color: Colors.indigo.shade700,
                                  borderRadius: BorderRadius.all(Radius.circular(180))
                              ),
                            ) ),
                        Positioned(
                            top: 50,
                            right: 120,
                            child:Container(
                              height: 100,width: 100,
                              decoration: BoxDecoration(
                                  color: Colors.indigo.shade600,
                                  borderRadius: BorderRadius.all(Radius.circular(180))
                              ),
                            ) ),
                        Positioned(
                            top: 0,
                            right: 120,
                            child:Container(
                              height: 50,width: 50,
                              decoration: BoxDecoration(
                                  color: Colors.indigo.shade500,
                                  borderRadius: BorderRadius.all(Radius.circular(180))
                              ),
                            ) ),

                      ],
                    ),
                  ),
                  Container(
                    height: 70,
                    child: ListView.separated(
                      separatorBuilder: (conntext,index)=>SizedBox(width: 10,) ,
                      scrollDirection: Axis.horizontal,
                        itemCount:controller.cate.length ,
                        itemBuilder:(conntext,index)
                            {
                              String imagePath = "D:\\Xampp\\htdocs\\Ecommerce\\Images\\${controller.cate[index]['categry_img']}";
                              return Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                height: 50,
                                width: 50,
                                //"{D:\\Xampp\\htdocs\\Ecommerce\\Images}/${controller.cate[index]['categry_img']}"
                                child: Image.file(File(imagePath)),
                              );
                            }
                    ),
                  )
                ],
              ));
        },

      )
    );
  }
}
