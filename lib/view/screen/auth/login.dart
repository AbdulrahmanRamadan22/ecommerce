import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/auth/login_controller.dart';
import '../../../shared/constants/image_assets.dart';
import '../../../shared/function/alertexitapp.dart';
import '../../../shared/function/valid_input.dart';
import '../../widgets/shared/default_button.dart';
import '../../widgets/shared/default_form_field.dart';
import '../../widgets/shared/default_text_button.dart';



class LoginScreen extends StatelessWidget {


  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImplement controller= Get.put(LoginControllerImplement());
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;


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
                     SizedBox(height: height/40,),
                    const Image(image: AssetImage(AppImageAsset.logo),height: 150,width: 150),

                Text("Welcome Back",style:Theme.of(context).textTheme.bodyLarge),
                   const Text("Login now to browse our hot offers"),
                    SizedBox(height: height/40,),

                    defaultFormField(
                      controller: controller.email,
                      label: "Email Address",
                      prefix: Icons.email_outlined,
                      type: TextInputType.emailAddress,
                      validate: (value) {
                        return validInput(value!,5,100,"email");

                      },

                    ),
                    SizedBox(height: height/40,),

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


                    SizedBox(height: height/40,),
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
                    SizedBox(height: height/60,),
                    // const SizedBox(height: 10,),


                    defaultButton(
                      text: "Login",
                      onPressed: (){
                        // controller.login();
                      },

                    ),
                    SizedBox(height: height/60,),

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
