import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/auth/forget_password/reset_password_controller.dart';
import '../../../widgets/default_button.dart';
import '../../../widgets/default_form_field.dart';


class ResetPasswordScreen extends StatelessWidget {
  bool isPassword=true;
   ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImplement controller= Get.put(ResetPasswordControllerImplement());

    return Scaffold(
      appBar: AppBar(
        title: const Text("Reset Password"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Form(
            key: controller.formState,
            child: Column(
                children: [
                  SizedBox(height: 20,),

                  Text("New Password",style:Theme.of(context).textTheme.bodyLarge),
                  const Text("Please Enter New Password"),
                  const SizedBox(height: 30,),

                  defaultFormField(
                      label: "New Password",
                      prefix: Icons.lock_outline,
                      type: TextInputType.visiblePassword,
                      suffix:isPassword? Icons.visibility_outlined:Icons.visibility_off_outlined,
                      isPassword: isPassword,
                      controller: controller.password,
                      suffixPressed: (){
                        // setState(() {
                        //   isPassword =! isPassword;
                        //
                        // });
                      },
                    validate: (value) {

                    },

                  ),
                  //
                  const SizedBox(height: 30,),
                  defaultFormField(
                      label: "Confirm Password",
                      prefix: Icons.lock_outline,
                      type: TextInputType.visiblePassword,
                      suffix:isPassword? Icons.visibility_outlined:Icons.visibility_off_outlined,
                      isPassword: isPassword,
                      controller: controller.confirmPassword,
                      suffixPressed: (){
                        // setState(() {
                        //   isPassword =! isPassword;
                        //
                        // });
                      },
                    validate: (value) {

                    },
                  ),
                  const SizedBox(height: 50,),

                  defaultButton(
                    text: "Save",
                    onPressed: (){
                    controller.goToSuccessResetPassword();
                    },

                  ),

                ]
            ),
          ),
        ),
      ),
    );
  }
}
