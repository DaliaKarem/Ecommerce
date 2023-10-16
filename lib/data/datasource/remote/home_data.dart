import 'package:ecommerce/Links.dart';
import 'package:ecommerce/core/class/crud.dart';

class homeData{
  crud _crud;
  homeData(this._crud);
  getData()async{
    var res=await _crud.postData(linkapp.home, {});
    return res.fold((l) => l, (r) => r);
  }
}