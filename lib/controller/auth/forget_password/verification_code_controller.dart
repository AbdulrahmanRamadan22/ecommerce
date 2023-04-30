import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../shared/constants/routes.dart';

abstract class VerificationCodeController extends GetxController {
  checkCode();
  goToResetPassword();
}

class VerifyCodeControllerImplement extends VerificationCodeController {

  late String verifyCode  ;

  @override
  checkCode() {}

  @override
  goToResetPassword() {
    Get.offAllNamed(AppRoute.resetPassword);
  }

  @override
  void onInit() {
    super.onInit();
  }


}