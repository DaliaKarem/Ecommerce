import 'package:ecommerce/core/class/satusReq.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class handlingDataView extends StatelessWidget {
  handlingDataView({Key? key, required this.status, required this.widget})
      : super(key: key);
  final statusReq status;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return status == statusReq.loading
        ? Center(
            child: Lottie.asset("assets/lottie/Loading.json"),
          )
        : status == statusReq.offlineFail
            ? Center(
                child: Lottie.asset("assets/lottie/offline.json"),
              )
            : status == statusReq.fail
                ? Center(
                    child: Lottie.asset("assets/lottie/Fail.json",repeat: false),
                  )
                : widget;
  }
}
