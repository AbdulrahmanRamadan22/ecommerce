import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_app_advanced/shared/constants/routes.dart';

abstract class LoginController extends GetxController {
  // ignore: non_constant_identifier_names
  login();
  goTORegister();
  goToForgetPassword();

}

class LoginControllerImplement extends LoginController{
  GlobalKey<FormState> formState = GlobalKey<FormState>();

  late TextEditingController email;
  late TextEditingController password;

  bool isShowPassword=true;

  showPassword(){
    isShowPassword=!isShowPassword;
    update();

  }

  @override
  login() {
    var formData = formState.currentState;
    if (formData!.validate()) {
      print("Valid");
    } else {
      print("Not Valid");
    }

  }
  @override
  goTORegister() {
    Get.offNamed(AppRoute.register);
  }

  @override
  void onInit() {
    FirebaseMessaging.instance.getToken().then((value) {
      print(value);
      String? token = value;
    });
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
  @override
  goToForgetPassword() {
    Get.toNamed(AppRoute.forgerPassword);
  }

}