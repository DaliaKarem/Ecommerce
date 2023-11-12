import 'package:ecommerce/Links.dart';
import 'package:ecommerce/core/class/crud.dart';

class add_CartData{
  crud _crud;
 add_CartData(this._crud);
  postData(String id,String itemid )async{
    var res=await _crud.postData(linkapp.add_Cart, {
      "userid":id,
      "itemid":itemid,

    });
    print("user is :"+ id + "  item : "+ itemid );
    return res.fold((l) => l, (r) => r);
  }
}