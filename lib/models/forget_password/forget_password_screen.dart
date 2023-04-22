import 'package:flutter/material.dart';

import '../../modules/register/register_screen.dart';
import '../../shared/widgets/default_button.dart';
import '../../shared/widgets/default_form_field.dart';
import '../../shared/widgets/navigate_to_screen.dart';
import '../verification/verification_code_screen.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Forget Password"),
      ),
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
              children: [
                SizedBox(height: 20,),

                Text("Forget Password",style:Theme.of(context).textTheme.bodyLarge),
                const Text("Please enter email and we will send \n you a code to return to you account."),
                const SizedBox(height: 50,),


                defaultFormField(
                  label: "Email Address",
                  prefix: Icons.email_outlined,
                  type: TextInputType.emailAddress,

                ),


                const SizedBox(height: 50,),

                defaultButton(
                  text: "Send",
                  onPressed: (){
                    navigateTo(context,  const VerificationCodeScreen());

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
                        navigateTo(context,  const RegisterScreen());

                      },
                      child: const Text('Register Now',style: TextStyle(fontSize: 16)),
                    ),
                  ],
                )



              ]
          ),
        ),
      ),
    );
  }
}
