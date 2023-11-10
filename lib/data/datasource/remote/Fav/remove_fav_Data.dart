import 'package:ecommerce/Links.dart';
import 'package:ecommerce/core/class/crud.dart';

class removeFavData{
  crud _crud;
  removeFavData(this._crud);
  DeleteFav(String id,String itemid )async{
    var res=await _crud.postData(linkapp.remove_Fav, {
      "userid":id,
      "itemid":itemid,

    });
    print("user is :"+ id + "  item : "+ itemid );

    return res.fold((l) => l, (r) => r);
  }
}