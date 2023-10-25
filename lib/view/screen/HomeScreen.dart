import 'package:ecommerce/controller/HomeScreenController.dart';
import 'package:ecommerce/core/const/color.dart';
import 'package:ecommerce/view/screen/Home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(homeSceenControllerImp());
    return GetBuilder<homeSceenControllerImp>(
        builder: (controller) =>
            Scaffold(
              bottomNavigationBar: BottomAppBar(
              child: Theme(
                data: Theme.of(context).copyWith(canvasColor: Colors.white, primaryColor: Colors.grey),
                child: BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  currentIndex: controller.currentage,
                  onTap: (index) {
                    controller.changepage(index);
                  },
                  items: [
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.home,
                        color: (controller.currentage == 0) ? colorApp.primary : Colors.black,
                      ),
                      label: 'Home', // Label for the first item
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.favorite,
                        color: (controller.currentage == 1) ? colorApp.primary : Colors.black,
                      ),
                      label: 'Favorites', // Label for the first item
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.add_shopping_cart,
                        color: (controller.currentage == 2) ? colorApp.primary : Colors.black,
                      ),
                      label: 'Cart', // Label for the second item
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.settings,
                        color: (controller.currentage == 3) ? colorApp.primary : Colors.black,
                      ),
                      label: 'Settings', // Label for the third item
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.account_circle,
                        color: (controller.currentage == 4) ? colorApp.primary : Colors.black,
                      ),
                      label: 'Account', // Label for the fourth item
                    ),
                  ],
                ),
              ),
            ),
              body: controller.Pages.elementAt(controller.currentage),
    ));
  }
}
