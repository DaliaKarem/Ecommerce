import 'package:ecommerce/Links.dart';
import 'package:ecommerce/core/class/crud.dart';

class removeFromCartPageData{
  crud _crud;
  removeFromCartPageData(this._crud);
  DeleteCart(String id,String itemid )async{
    var res=await _crud.postData(linkapp.remove_From_CartPage, {
      "user_id":id,
      "item_id":itemid,

    });
print("id s : "+id +"  "+ itemid);
    return res.fold((l) => l, (r) => r);
  }
}