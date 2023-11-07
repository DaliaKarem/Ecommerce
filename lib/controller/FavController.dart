import 'package:get/get.dart';

abstract class FavController extends GetxController{

}
class FavControllerImp extends FavController{
Map isFav={};
  setFav(id,val)
{ //id ==> itemId and Val is fav(1) or notFav(0)
  isFav[id]=val;
  update();
}
}