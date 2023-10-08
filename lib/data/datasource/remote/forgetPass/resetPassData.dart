import 'package:ecommerce/Links.dart';
import 'package:ecommerce/core/class/crud.dart';

class resetPassData{
  crud _crud;
  resetPassData(this._crud);
  postData(String pass,String email)async{
    var res=await _crud.postData(linkapp.resetPass, {
      "email":email,
      "pass":pass,
    });
    return res.fold((l) => l, (r) => r);
  }
}