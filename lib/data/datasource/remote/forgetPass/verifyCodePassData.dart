import 'package:ecommerce/Links.dart';
import 'package:ecommerce/core/class/crud.dart';

class verifyCodePassData{
  crud _crud;
  verifyCodePassData(this._crud);
  postData(String code,String email)async{
    var res=await _crud.postData(linkapp.VerifyCodePass, {
      "email":email,
      "verifyCode":code,
    });
    print("verifyCode  $code");
    return res.fold((l) => l, (r) => r);
  }
}