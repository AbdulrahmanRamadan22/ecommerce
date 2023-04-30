import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_app_advanced/shared/constants/routes.dart';

abstract class ForgetPasswordController extends GetxController {
  // ignore: non_constant_identifier_names
  checkEmail();
  goTOVerificationCode();

}

class ForgetControllerImplement extends ForgetPasswordController{
  late TextEditingController email;
  GlobalKey<FormState> formState = GlobalKey<FormState>();


  @override
  checkEmail() {
    var formData = formState.currentState;
    if (formData!.validate()) {
      print("Valid");
    } else {
      print("Not Valid");
    }
  }
  @override
  goTOVerificationCode() {
    Get.offAllNamed(AppRoute.verificationCode);
  }

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }

}