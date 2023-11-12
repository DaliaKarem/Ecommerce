import 'package:ecommerce/core/class/satusReq.dart';
import 'package:ecommerce/core/functions/handlingData.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:ecommerce/data/datasource/remote/Fav/add_fav_Data.dart';
import 'package:ecommerce/data/datasource/remote/Fav/getFav_Data.dart';
import 'package:ecommerce/data/datasource/remote/Fav/removeFrom_FavPage_Data.dart';
import 'package:ecommerce/data/datasource/remote/Fav/remove_fav_Data.dart';
import 'package:ecommerce/data/model/Fav.dart';
import 'package:get/get.dart';

abstract class FavController extends GetxController {
  addtoFav(String);
  removeFromFav(String);
  getData( );
  removeFrompage(String);
}

class FavControllerImp extends FavController {
  Map isFav = {};
  addFavData addFav = addFavData(Get.find());
  removeFavData removeFav=removeFavData(Get.find()) ;
  getFavData getFav=getFavData(Get.find());
  removeFromFavPageData removefrompage=removeFromFavPageData(Get.find());
  List data = [];
  List<FavModel> fav=[];
  statusReq? status;
  myServices myservices=Get.find();
String ?id;
  setFav(id, val) {
    //id ==> itemId and Val is fav(1) or notFav(0)
    isFav[id] = val;
    update();
  }
  @override
  initialData(){
    id=myservices.sharedPreferences.getString("id");

  }
  @override
  void onInit() {
    //initialData();
    getData();
    super.onInit();
  }
  @override
  getData()async{
    fav.clear();
    status=statusReq.loading;
    var res=await getFav.getData(myservices.sharedPreferences.getString("id")!);
    print("favvvvvvvvvv");
    status=handlingData(res);
    if(status==statusReq.success)
    {
      if(res['status']=='success')
      {
        List resdata=res['data'];
        fav.addAll(resdata.map((e) => FavModel.fromJson(e)));
        print("fav is:   ${fav}");
      }
      else{
        status=statusReq.fail;
      }

    }
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

  @override
  removeFrompage(itemid) {
    status = statusReq.loading;

    var res =  removefrompage.DeleteFav(myservices.sharedPreferences.getString("id")!,itemid);
    status = handlingData(res);

        fav.removeWhere((element) => element.favoritesId==itemid);
        Get.rawSnackbar(title: "Done",message: "Remove From Fav");
     
    update();
  }
}
