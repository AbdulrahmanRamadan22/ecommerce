import 'package:flutter/material.dart';
import 'package:store_app_advanced/modules/login/login_screen.dart';
import 'package:store_app_advanced/shared/styles/colors.dart';
import 'package:store_app_advanced/shared/widgets/navigate_to_screen.dart';

import '../../shared/widgets/default_button.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import '../reset_password/reset_password_screen.dart';
class VerificationCodeScreen extends StatelessWidget {
  const VerificationCodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  numberOfFields: 5,

                  // borderColor: AppColor.defaultColor,

                  //set to true to show as box or false to show as dash
                  showFieldAsBox: true,
                  //runs when a code is typed in
                  onCodeChanged: (String code) {
                    //handle validation or checks here
                  },
                  //runs when every textfield is filled
                  onSubmit: (String verificationCode){

                    navigateTo(context, ResetPasswordScreen());
                  }, // end onSubmit
                ),


                const SizedBox(height: 80,),

                defaultButton(
                  text: "Verify",
                  onPressed: (){
                    navigateTo(context, ResetPasswordScreen());
                  },
                ),





              ]
          ),
        ),
      ),
    );
  }
}
