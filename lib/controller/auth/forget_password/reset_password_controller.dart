import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../shared/constants/routes.dart';

abstract class ResetPasswordController extends GetxController {
  resetPassword();
  goToSuccessResetPassword();
}

class ResetPasswordControllerImplement extends ResetPasswordController {
  late TextEditingController password;
  late TextEditingController confirmPassword;
  GlobalKey<FormState> formState = GlobalKey<FormState>();


  @override
  resetPassword() {
    var formData = formState.currentState;
    if (formData!.validate()) {
      print("Valid");
    } else {
      print("Not Valid");
    }
  }

  @override
  goToSuccessResetPassword() {
    Get.offAllNamed(AppRoute.successResetPassword);
  }

  @override
  void onInit() {
    password = TextEditingController();
    confirmPassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    confirmPassword.dispose();
    super.dispose();
  }
}