class linkapp{
  static const String linkServer="http://10.0.2.2/ecommerce";
  static const String test="$linkServer/test.php";

  //Auth
  static const String SignUp="$linkServer/auth/signup.php";
  static const String VerifyCode="$linkServer/auth/verifyCode.php";
  static const String login="$linkServer/auth/login.php";

  //ForgetPass
  static const String checkEmail="$linkServer/forgetPass/checkEmail.php";
  static const String VerifyCodePass="$linkServer/forgetPass/verifyCodePass.php";
  static const String resetPass="$linkServer/forgetPass/resetPass.php";

  //Home
  static const String home="$linkServer/home.php";
  static const String items="$linkServer/Items/items.php";
//http://localhost/ecommerce/forgetPass/checkEmail.php
}