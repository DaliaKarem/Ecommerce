import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/class/satusReq.dart';
import 'package:ecommerce/core/functions/checkConnectInternet.dart';
import 'package:http/http.dart' as http;

class crud
{
  Future<Either<statusReq, Map>> postData(String url, Map data) async {
    try {

      if (await checkInterne()==true) {
        print("check  ${url}");
        var res = await http.post(Uri.parse(url), body: data);
        print("check11");

        if (res.statusCode == 200 ||res.statusCode == 201 ) {
          Map resBody = jsonDecode(res.body);
          print("************************");
          print(resBody);
          return Right(resBody);
        } else {
          return Left(statusReq.fail);
        }
      } else {

        return Left(statusReq.offlineFail);
      }
    } catch (e) {
      print("00");

      return Left(statusReq.fail);
    }
  }

}
