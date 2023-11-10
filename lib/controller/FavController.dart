import 'package:ecommerce/core/class/satusReq.dart';
import 'package:ecommerce/core/functions/handlingData.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:ecommerce/data/datasource/remote/Fav/add_fav_Data.dart';
import 'package:ecommerce/data/datasource/remote/Fav/remove_fav_Data.dart';
import 'package:get/get.dart';

abstract class FavController extends GetxController {
  addtoFav(String);
  removeFromFav(String);
}

class FavControllerImp extends FavController {
  Map isFav = {};
  addFavData addFav = addFavData(Get.find());
  removeFavData removeFav=removeFavData(Get.find()) ;
  List data = [];
  statusReq? status;
  myServices myservices=Get.find();

  setFav(id, val) {
    //id ==> itemId and Val is fav(1) or notFav(0)
    isFav[id] = val;
    update();
  }

  @override
  addtoFav(itemid) async{
    status = statusReq.loading;
    print(" id ii" + (myservices.sharedPreferences?.getString("id") ?? "null"));
    var res = await addFav.postFav(myservices.sharedPreferences.getString("id")!,itemid);
    status = handlingData(res);
    if (status == statusReq.success) {
      if (res['status'] == 'success') {
        print("Dnn");
        Get.rawSnackbar(title: "Done",message: "Add to Fav");
      } else {
        status = statusReq.fail;
      }
    }
}

  @override
  removeFromFav(itemid) async{
    status = statusReq.loading;
    print("jjjjj");

    var res = await removeFav.DeleteFav(myservices.sharedPreferences.getString("id")!,itemid);
    print("jjjjj");
    status = handlingData(res);
    if (status == statusReq.success) {
      if (res['status'] == 'success') {
        print("Dnn");

        Get.rawSnackbar(title: "Done",message: "Remove From Fav");
      } else {
        status = statusReq.fail;
      }
    }
  }
}
