import 'package:ecommerce/Links.dart';
import 'package:ecommerce/core/class/crud.dart';

class signUpData{
  crud _crud;
  signUpData(this._crud);
  postData(String name,String email,String pass,String phone)async{
    var res=await _crud.postData(linkapp.SignUp, {
          "name":name,
          "email":email,
          "pass":pass,
          "phone":phone,
    });
    print("name $name");
    print(res);
    print(res.fold((l) => l, (r) => r));
    print("////");
    return res.fold((l) => l, (r) => r);
  }
}