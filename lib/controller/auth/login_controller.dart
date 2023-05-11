import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_app_advanced/shared/constants/routes.dart';

import '../../data/remote/auth/login.dart';
import '../../data/remote/status_request.dart';
import '../../shared/function/handing_datacontroller.dart';
import '../../shared/services/services.dart';

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

  StatusRequest statusRequest=StatusRequest.none;

  LoginData loginData = LoginData(Get.find()) ;
  MyServices myServices = Get.find();


  showPassword(){
    isShowPassword=!isShowPassword;
    update();
  }

  @override
  login() async {
    if (formState.currentState!.validate()) {
      statusRequest=StatusRequest.loading;
      update();

      var response= await loginData.userLogin(
        email: email.text,
        password: password.text,
      );

      print("=============================== Controller $response ") ;
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        Get.offNamed(AppRoute.layout);
      }
      else{
        statusRequest=StatusRequest.serverFailed;
        Get.defaultDialog(title: "ُWarning" , middleText: " Email Or password Not Correct") ;

      }
      update();
    }
    else {}
    update();
  }


  @override
  goTORegister() {
    Get.offNamed(AppRoute.register);
  }

  @override
  void onInit() {
    FirebaseMessaging.instance.getToken().then((value) {
      print("token $value");
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