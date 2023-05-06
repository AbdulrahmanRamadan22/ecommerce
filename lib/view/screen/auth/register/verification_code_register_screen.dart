import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_app_advanced/shared/styles/colors.dart';

import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import '../../../../controller/auth/register/verification_code_register_controller.dart';
import '../../../widgets/shared/default_button.dart';


class VerificationCodeRegisterScreen extends StatelessWidget {
  const VerificationCodeRegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VerificationCodeRegisterControllerImplement controller= Get.put(VerificationCodeRegisterControllerImplement());

    return Scaffold(
      appBar: AppBar(
        title: const Text("Verification"),
      ),
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
              children: [
                SizedBox(height: 20,),

                Text("OTP Verification",style:Theme.of(context).textTheme.bodyLarge),
                const Text("Please enter the Digit code send \n To abdulrahman@gmail.com"),
                const SizedBox(height: 50,),


                OtpTextField(
                  borderRadius: BorderRadius.circular(10),
                 fieldWidth: 50,
                  focusedBorderColor: AppColor.defaultColor,
                  numberOfFields: 6,

                  // borderColor: AppColor.defaultColor,

                  //set to true to show as box or false to show as dash
                  showFieldAsBox: true,
                  //runs when a code is typed in
                  onCodeChanged: (String code) {
                    print(code);
                    //handle validation or checks here
                  },
                  //runs when every textfield is filled
                  onSubmit: (String verificationCode){
                    controller.goToSuccessRegister();

                    // Get.to( ResetPasswordScreen());
                  }, // end onSubmit
                ),


                const SizedBox(height: 80,),

                defaultButton(
                  text: "Verify",
                  onPressed: (){
                 controller.goToSuccessRegister();
                  },
                ),

              ]
          ),
        ),
      ),
    );
  }
}
