import 'package:ecommerce/Links.dart';
import 'package:ecommerce/core/class/crud.dart';

class getCartData{
  crud _crud;
  getCartData(this._crud);
  getData(String id)async{
    var res=await _crud.postData(linkapp.Cart, {
      "id":id
    });
    return res.fold((l) => l, (r) => r);
  }
}