import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../shared/constants/routes.dart';

abstract class VerificationCodeRegisterController extends GetxController {
  checkCode();
  goToSuccessRegister();
}

class VerificationCodeRegisterControllerImplement extends VerificationCodeRegisterController {

  late String verifyCode  ;

  @override
  checkCode() {

  }

  @override
  goToSuccessRegister() {
    Get.offNamed(AppRoute.successRegister);
  }

  @override
  void onInit() {
    super.onInit();
  }


}