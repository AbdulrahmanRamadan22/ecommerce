import 'package:flutter/material.dart';
import 'package:store_app_advanced/models/forget_password/forget_password_screen.dart';
import 'package:store_app_advanced/shared/widgets/navigate_to_screen.dart';

import '../../shared/constants/image_assets.dart';
import '../../shared/widgets/default_button.dart';
import '../../shared/widgets/default_form_field.dart';
import '../register/register_screen.dart';

class LoginScreen extends StatefulWidget {
 LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isPassword=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: const Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
              children: [
                SizedBox(height: 20,),
               Image(image: AssetImage("${AppImageAsset.logo}"),height: 150,width: 150),

            Text("Welcome Back",style:Theme.of(context).textTheme.bodyLarge),
               const Text("Login now to browse our hot offers"),
                SizedBox(height: 30,),

                defaultFormField(
                  label: "Email Address",
                  prefix: Icons.email_outlined,
                  type: TextInputType.emailAddress,

                ),
                const SizedBox(height: 30,),

                defaultFormField(
                  label: "Password",
                  prefix: Icons.lock_outline,
                  type: TextInputType.visiblePassword,
                  suffix:isPassword? Icons.visibility_outlined:Icons.visibility_off_outlined,
                  isPassword: isPassword,
                suffixPressed: (){
                    setState(() {
                      isPassword =! isPassword;

                    });
                }

                ),
                const SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: (){
                        navigateTo(context, const ForgetPasswordScreen());
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
                  onPressed: (){},

                ),
                const SizedBox(height: 10,),

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
