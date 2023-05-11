import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../data/remote/auth/verification_code_register.dart';
import '../../../data/remote/status_request.dart';
import '../../../shared/constants/routes.dart';
import '../../../shared/function/handing_datacontroller.dart';

abstract class VerificationCodeRegisterController extends GetxController {
  checkCode();
  goToSuccessRegister(String verfiyCodeSignUp);
}

class VerificationCodeRegisterControllerImplement extends VerificationCodeRegisterController {

  String?email;
  StatusRequest statusRequest=StatusRequest.none;


  VerificationCodeRegisterData verificationCodeRegisterData = VerificationCodeRegisterData(Get.find()) ;


  @override
  checkCode() {

  }

  @override
  goToSuccessRegister(String verfiyCodeSignUp) async {

    statusRequest=StatusRequest.loading;
    update();


    var response= await verificationCodeRegisterData.verificationCodeRegister(
      email: email!,
      code:verfiyCodeSignUp ,
    );


    print("=============================== Controller $response ") ;
    statusRequest=handlingData(response);
    if (StatusRequest.success == statusRequest) {
      // data.reactive(response['data']);
      Get.offNamed(AppRoute.successRegister);
      // Get.delete<VerificationCodeRegisterControllerImplement>();
    }
    else{
      Get.defaultDialog(
          title: "ُWarning",
          middleText: "Verify Code Not Correct");
      statusRequest=StatusRequest.failure;
    }
    update();
  }



  @override
  void onInit() {
    email =Get.arguments['email'];
    super.onInit();
  }


}