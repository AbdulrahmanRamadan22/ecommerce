import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../controller/auth/register/register_controller.dart';
import '../../../../shared/function/alertexitapp.dart';
import '../../../../shared/function/valid_input.dart';
import '../../../widgets/shared/default_button.dart';
import '../../../widgets/shared/default_form_field.dart';
import '../../../widgets/shared/default_text_button.dart';



class RegisterScreen extends StatelessWidget{
  bool isPassword=true;

  RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    RegisterControllerImplement controller= Get.put(RegisterControllerImplement());


    return Scaffold(
      appBar: AppBar(
        title: const Text("Register"),
      ),
      body: WillPopScope(
        onWillPop: alertExitApp,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SingleChildScrollView(
            child: Form(
              key: controller.formState,
              child: Column(
                  children: [
                    const SizedBox(height: 20,),

                    Text("Welcome Back", style: Theme
                        .of(context)
                        .textTheme
                        .bodyLarge),
                    const Text("Register now to browse our hot offers"),
                    const SizedBox(height: 30,),
                    defaultFormField(
                      label: "User Name",
                      prefix: Icons.account_circle_outlined,
                      type: TextInputType.name,
                      controller: controller.username,
                      validate: (value) {
                        return validInput(value!,3,30,"username");


                      },

                    ),
                    const SizedBox(height: 30,),

                    defaultFormField(
                      label: "Email Address",
                      prefix: Icons.email_outlined,
                      type: TextInputType.emailAddress,
                      controller: controller.email,
                      validate: (value) {
                        return validInput(value!,5,30,"email");


                      },


                    ),
                    const SizedBox(height: 30,),
                    defaultFormField(
                      label: "Phone",
                      prefix: Icons.phone,
                      type: TextInputType.phone,
                      controller: controller.phone,
                      validate: (value) {
                        return validInput(value!,11,11,"phone");


                      },


                    ),
                    const SizedBox(height: 30,),


                    defaultFormField(
                        label: "Password",
                        prefix: Icons.lock_outline,
                        type: TextInputType.visiblePassword,
                        suffix: isPassword ? Icons.visibility_outlined : Icons
                            .visibility_off_outlined,
                        isPassword: isPassword,
                        controller: controller.password,

                        suffixPressed: () {
                          // setState(() {
                          //   isPassword = !isPassword;
                          // });
                        },
                      validate: (value) {
                        return validInput(value!,6,30,"password");



                      },
                    ),

                    const SizedBox(height: 30,),

                    defaultButton(
                      text: "Register",
                      onPressed: () {
                        controller.register();
                      },

                    ),
                    const SizedBox(height: 10,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'have an account ?',
                          style: Theme
                              .of(context)
                              .textTheme
                              .bodySmall,
                        ),
                        defaultTextButton(
                            text: "Login Now",
                            onPressed: () {
                            controller.goToLogin();
                            }),
                      ],
                    )

                  ]
              ),
            ),
          ),
        ),
      ),

    );
  }
}
