import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../controller/auth/login_controller.dart';
import '../../../shared/constants/image_assets.dart';
import '../../../shared/function/alertexitapp.dart';
import '../../../shared/function/valid_input.dart';
import '../../widgets/default_button.dart';
import '../../widgets/default_form_field.dart';
import '../../widgets/default_text_button.dart';



class LoginScreen extends StatelessWidget {


  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImplement controller= Get.put(LoginControllerImplement());

    return Scaffold(
      appBar: AppBar(

        title: const Text("Login"),
      ),
      body: WillPopScope(
        onWillPop:alertExitApp,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SingleChildScrollView(
            child: Form(
              key: controller.formState,
              child: Column(
                  children: [
                    const SizedBox(height: 20,),
                    const Image(image: AssetImage(AppImageAsset.logo),height: 150,width: 150),

                Text("Welcome Back",style:Theme.of(context).textTheme.bodyLarge),
                   const Text("Login now to browse our hot offers"),
                    const SizedBox(height: 30,),

                    defaultFormField(
                      controller: controller.email,
                      label: "Email Address",
                      prefix: Icons.email_outlined,
                      type: TextInputType.emailAddress,
                      validate: (value) {
                        return validInput(value!,5,100,"email");

                      },

                    ),
                    const SizedBox(height: 30,),

                    GetBuilder<LoginControllerImplement>(
                        builder:(controller) =>  defaultFormField(
                          controller: controller.password,
                          label: "Password",
                          prefix: Icons.lock_outline,
                          type: TextInputType.visiblePassword,
                          suffix:controller.isShowPassword? Icons.visibility_outlined:Icons.visibility_off_outlined,
                          isPassword: controller.isShowPassword,
                          suffixPressed: (){
                            controller.showPassword();
                          },
                          validate: (value) {
                            return validInput(value!,5,30,"password");

                          },

                        ),),


                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: (){
                           controller.goToForgetPassword();
                          },
                          child: Text(
                            "Forget Password",
                            style:Theme.of(context).textTheme.bodySmall ,


                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    // const SizedBox(height: 10,),


                    defaultButton(
                      text: "Login",
                      onPressed: (){
                        controller.login();
                      },

                    ),
                    const SizedBox(height: 10,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  [
                        Text(
                          'Don\'t have an account ?',
                          style:Theme.of(context).textTheme.bodySmall ,
                        ),

                        defaultTextButton(
                          text: "Register Now",
                          onPressed:(){
                            controller.goTORegister();
                          }

                        ),


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
