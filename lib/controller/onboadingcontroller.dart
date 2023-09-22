import 'package:get/get.dart';

abstract class onBoardingController extends GetxController
{
  //2fun ->1 to go to next page   , 2 dot will change
  nextPage();
  dotChange(int page);
}
class onBoardingControllerImp extends onBoardingController{
int current=0;
  @override
  dotChange(int page) {
   current=page;
   update();
  }

  @override
  nextPage() {

  }

}