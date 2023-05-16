class ApiLink{
static const String server="https://store-project.shop/api/v1";

//========================Home===============
static const String home="$server/home/get-home";
  static const String category="$server/categories/get-category";

//===========================Auth=======================
static const String register="$server/users/register";
  static const String verifyCode="$server/users/verify-code";
  static const String login="$server/users/login";

  //===========================forgetPassword=======================
  static const String forgetPassword="$server/users/forget-password";
  static const String checkResetCode="$server/users/check-reset-code";
  static const String resetPassword="$server/users/reset";
  //===========================product=======================

  // static const String product="$server/products/get-product";


}