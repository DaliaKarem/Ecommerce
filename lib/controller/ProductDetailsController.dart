import 'package:ecommerce/data/model/items.dart';
import 'package:get/get.dart';

abstract class ProductDetailsController extends GetxController{

}
class ProductDetailsControllerImp extends ProductDetailsController{

  late itemModel Items;
  String?res;
  InialData()
  {
    Items=Get.arguments['itemModel'];
    res=Get.arguments['price_dis'];
  }
  @override
  void onInit() {
    InialData();
    super.onInit();
  }
}