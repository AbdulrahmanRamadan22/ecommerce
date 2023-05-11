import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/auth/forget_password/reset_password_controller.dart';
import '../../../widgets/shared/default_button.dart';
import '../../../widgets/shared/default_form_field.dart';

class ResetPasswordScreen extends StatelessWidget {
  bool isPassword=true;
  ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImplement controller= Get.put(ResetPasswordControllerImplement());
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Reset Password"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
        child: SingleChildScrollView(
          child: Form(
            key: controller.formState,
            child: Column(
              children: [
                SizedBox(height: screenHeight * 0.03),
                Text("New Password", style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: screenWidth * 0.06)),
                SizedBox(height: screenHeight * 0.01),
                Text("Please Enter New Password", style: TextStyle(fontSize: screenWidth * 0.04)),
                SizedBox(height: screenHeight * 0.03),
                defaultFormField(
                  label: "New Password",
                  prefix: Icons.lock_outline,
                  type: TextInputType.visiblePassword,
                  suffix: isPassword? Icons.visibility_outlined : Icons.visibility_off_outlined,
                  isPassword: isPassword,
                  controller: controller.password,
                  suffixPressed: (){
                    // setState(() {
                    //   isPassword =! isPassword;
                    // });
                  },
                  validate: (value) {
                  }, hint: 'Enter New Password',
                ),
                SizedBox(height: screenHeight * 0.03),
                defaultFormField(
                  label: "Confirm Password",
                  prefix: Icons.lock_outline,
                  type: TextInputType.visiblePassword,
                  suffix: isPassword? Icons.visibility_outlined : Icons.visibility_off_outlined,
                  isPassword: isPassword,
                  controller: controller.confirmPassword,
                  suffixPressed: (){
                    // setState(() {
                    //   isPassword =! isPassword;
                    // });
                  },
                  validate: (value) {
                  }, hint: 'Enter Confirm Password',
                ),
                SizedBox(height: screenHeight * 0.05),
                defaultButton(
                  text: "Save",
                  onPressed: (){
                    controller.goToSuccessResetPassword();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}