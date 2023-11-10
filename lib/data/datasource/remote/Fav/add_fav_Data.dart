import 'package:ecommerce/Links.dart';
import 'package:ecommerce/core/class/crud.dart';

class addFavData{
  crud _crud;
  addFavData(this._crud);
  postFav(String id,String itemid )async{
    var res=await _crud.postData(linkapp.add_Fav, {
      "userid":id,
      "itemid":itemid,

    });
    print("user is :"+ id + "  item : "+ itemid );
    return res.fold((l) => l, (r) => r);
  }
}