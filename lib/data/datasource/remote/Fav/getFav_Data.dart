import 'package:ecommerce/Links.dart';
import 'package:ecommerce/core/class/crud.dart';

class getFavData{
  crud _crud;
  getFavData(this._crud);
  getData(String id)async{
    var res=await _crud.postData(linkapp.Fav, {
      "id":id
    });
    return res.fold((l) => l, (r) => r);
  }
}