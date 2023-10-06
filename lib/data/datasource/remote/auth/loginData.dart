import 'package:ecommerce/Links.dart';
import 'package:ecommerce/core/class/crud.dart';

class loginData{
  crud _crud;
  loginData(this._crud);
  postData(String email,String pass)async{
    var res=await _crud.postData(linkapp.login, {
      "email":email,
      "pass":pass,
    });
    print(res);
    print(res.fold((l) => l, (r) => r));
    print("////");
    return res.fold((l) => l, (r) => r);
  }
}