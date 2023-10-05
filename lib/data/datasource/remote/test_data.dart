import 'package:ecommerce/Links.dart';
import 'package:ecommerce/core/class/crud.dart';

class testData{
  crud _crud;
  testData(this._crud);
  getData()async{
    var res=await _crud.postData(linkapp.test, {});
    return res.fold((l) => l, (r) => r);
  }
}