import 'package:ecommerce/data/model/items.dart';
import 'package:get/get.dart';

abstract class ProductDetailsController extends GetxController{

}
class ProductDetailsControllerImp extends ProductDetailsController{

  late itemModel Items;
  InialData()
  {
    Items=Get.arguments['itemModel'];
  }
  @override
  void onInit() {
    InialData();
    super.onInit();
  }
}