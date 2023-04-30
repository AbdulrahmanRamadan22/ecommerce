import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_app_advanced/shared/constants/routes.dart';
import '../../../../controller/auth/forget_password/forget_password_controller.dart';
import '../../../widgets/default_button.dart';
import '../../../widgets/default_form_field.dart';
import '../register/register.dart';
import 'verification_code_screen.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ForgetControllerImplement controller= Get.put(ForgetControllerImplement());

    return Scaffold(
      appBar: AppBar(
        title: const Text("Forget Password"),
      ),
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Form(
            key: controller.formState,
            child: Column(
                children: [
                  const SizedBox(height: 20,),

                  Text("Forget Password",style:Theme.of(context).textTheme.bodyLarge),
                  const Text("Please enter email and we will send \n you a code to return to you account."),
                  const SizedBox(height: 50,),


                  defaultFormField(
                    label: "Email Address",
                    prefix: Icons.email_outlined,
                    controller: controller.email,
                    validate: (value) {

                    },


                  ),


                  const SizedBox(height: 50,),

                  defaultButton(
                    text: "Send",
                    onPressed: (){
                     controller.goTOVerificationCode();

                    },
                  ),
                  const SizedBox(height: 50,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                      Text(
                        'Don\'t have an account?',
                        style:Theme.of(context).textTheme.bodySmall ,
                      ),
                      TextButton(
                        onPressed: () {
                       Get.toNamed(AppRoute.register);

                        },
                        child: const Text('Register Now',style: TextStyle(fontSize: 16)),
                      ),
                    ],
                  )



                ]
            ),
          ),
        ),
      ),
    );
  }
}
