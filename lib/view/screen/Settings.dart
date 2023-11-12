import 'package:ecommerce/controller/SettingsController.dart';
import 'package:ecommerce/core/const/color.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class settings extends StatelessWidget {
  const settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    settingsControllerImp controllerImp=Get.put(settingsControllerImp());
    return Container(
      child: ListView(
        children: [
          Stack(
            clipBehavior: Clip.none,

            children: [
              Container(
                height: Get.width/2,
                color: colorApp.primary,
              ),
              Positioned(
                  bottom: -50,
                  right: 0,
                  left: 0,
                  child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: ClipOval(
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage(
                            "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww",
                          ),
                          backgroundColor: Colors.transparent, // Set background color to transparent
                        ),
                      )

                  )),

            ],
          ),
          SizedBox(height: 50,),
          Container(
            padding: EdgeInsets.all(20),
            child: Card(
              child: Column(
                children: [
                  ListTile(
                    title: Text("About Our APP"),
                    trailing: IconButton(
                      icon: Icon(Icons.info),
                      onPressed: ()
                      {

                      },
                    ),
                  ),
                  Divider(),
                  ListTile(
                    title: Text("Contact Us"),
                    trailing: IconButton(
                      icon: Icon(Icons.chat),
                      onPressed: ()
                      {

                      },
                    ),
                  ),
                  Divider(),
                  ListTile(
                    title: Text("Log Out"),
                    trailing: IconButton(
                      icon: Icon(Icons.logout),
                      onPressed: ()
                      {
                        controllerImp.LogOut();
                      },
                    ),
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
