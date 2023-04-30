import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../shared/constants/routes.dart';

abstract class RegisterController extends GetxController {
  register();
  goToLogin();
}

class RegisterControllerImplement extends RegisterController {
  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController password;
  GlobalKey<FormState> formState = GlobalKey<FormState>();


  @override
  register() {
    var formData = formState.currentState;
    if (formData!.validate()) {
      Get.offNamed(AppRoute.verificationCodeRegister);
      Get.delete<RegisterControllerImplement>();


      print("Valid");
    } else {
      print("Not Valid");
    }

  }

  @override
  goToLogin() {
    Get.offNamed(AppRoute.login);
  }

  @override
  void onInit() {
    username = TextEditingController() ;
    phone = TextEditingController() ;
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    username.dispose();
    email.dispose();
    phone.dispose();
    password.dispose();
    super.dispose();
  }
}