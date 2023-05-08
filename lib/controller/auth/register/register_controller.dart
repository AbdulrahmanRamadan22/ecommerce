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
  late StatusRequest statusRequest;
  RegisterData registerData = RegisterData(Get.find()) ;

  bool isShowPassword=true;

  showPassword(){
    isShowPassword=!isShowPassword;
    update();

  }


  Iterable<MapEntry<String, dynamic>> data = [];


  @override
  register() async {
    var formData = formState.currentState;
    if (formData!.validate()) {
      statusRequest=StatusRequest.loading;

      Map response= await registerData.userRegister(
          name: name.text,
        phone: phone.text,
          email: email.text,
          password: password.text,
      );


      print("=============================== Controller $response ") ;
      statusRequest=handlingData(response);
      if (StatusRequest.success == statusRequest) {
        // data.reactive(response['data']);

        Get.offNamed(AppRoute.verificationCodeRegister);
        Get.delete<RegisterControllerImplement>();

      }
      else{
        Get.defaultDialog(title: "ُWarning" , middleText: "Phone Number Or Email Already Exists") ;
        statusRequest=StatusRequest.failure;
      }
       update();
    } else { }
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