import 'package:ecommerce/Links.dart';
import 'package:ecommerce/core/class/crud.dart';

class remove_CartData{
  crud _crud;
 remove_CartData(this._crud);
 remove_Data(String id,String itemid )async{
    var res=await _crud.postData(linkapp.remove_Cart, {
      "userid":id,
      "itemid":itemid,

    });
    print("user is :"+ id + "  item : "+ itemid );

    return res.fold((l) => l, (r) => r);
  }
}