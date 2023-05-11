import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../data/remote/auth/register.dart';
import '../../../data/remote/status_request.dart';
import '../../../shared/constants/routes.dart';
import '../../../shared/function/handing_datacontroller.dart';

abstract class RegisterController extends GetxController {
  register();
  goToLogin();
}

class RegisterControllerImplement extends RegisterController {
  var name=TextEditingController();
  var email=TextEditingController();

  var phone=TextEditingController();
  var password=TextEditingController();



  GlobalKey<FormState> formState = GlobalKey<FormState>();
   StatusRequest statusRequest=StatusRequest.none;
  RegisterData registerData = RegisterData(Get.find()) ;

  bool isShowPassword=true;

  showPassword(){
    isShowPassword=!isShowPassword;
    update();

  }


  @override
  register() async {
    if (formState.currentState!.validate()) {
      statusRequest=StatusRequest.loading;
      update();

      var response= await registerData.userRegister(
          name: name.text,
        phone: phone.text,
          email: email.text,
          password: password.text,
      );


      print("=============================== Controller $response ") ;
      statusRequest=handlingData(response);
      if (StatusRequest.success == statusRequest) {
        // data.reactive(response['data']);

        Get.offNamed(AppRoute.verificationCodeRegister,arguments: {
          "email":email.text,
        });

      }
      else{
        Get.defaultDialog(title: "ُWarning" , middleText: "Phone Number Or Email Already Exists") ;
        statusRequest=StatusRequest.failure;

      }
    }
    update();
  }

  @override
  goToLogin() {
    Get.offNamed(AppRoute.login);
  }

  @override
  void onInit() {
    name = TextEditingController() ;
    email = TextEditingController();
    phone = TextEditingController() ;
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    name.dispose();
    email.dispose();
    phone.dispose();
    password.dispose();
    super.dispose();
  }
}