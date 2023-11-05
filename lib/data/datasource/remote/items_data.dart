import 'package:ecommerce/Links.dart';
import 'package:ecommerce/core/class/crud.dart';

class itemsData{
  crud _crud;
  itemsData(this._crud);
  getData(String id)async{
    var res=await _crud.postData(linkapp.items, {"id":id});
    return res.fold((l) => l, (r) => r);
  }
}