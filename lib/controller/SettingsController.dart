import 'package:ecommerce/core/const/routesName.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

abstract class settingsController extends GetxController{
LogOut();
}
class settingsControllerImp extends settingsController{
  myServices myservices=Get.find();
  @override
  LogOut() {
    myservices.sharedPreferences.clear();
    Get.offAllNamed(routeApp.Login);
  }

}