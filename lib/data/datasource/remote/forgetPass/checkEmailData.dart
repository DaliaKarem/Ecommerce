import 'package:ecommerce/Links.dart';
import 'package:ecommerce/core/class/crud.dart';

class checkEmailData{
  crud _crud;
  checkEmailData(this._crud);
  postData(String email)async{
    var res=await _crud.postData(linkapp.checkEmail, {
      "email":email,
    });
    print("Email is $email   link is $linkapp.checkEmail");
    return res.fold((l) => l, (r) => r);
  }
}