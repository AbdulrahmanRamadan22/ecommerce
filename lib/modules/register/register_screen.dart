import 'package:flutter/material.dart';

import '../../shared/widgets/default_button.dart';
import '../../shared/widgets/default_form_field.dart';
import '../../shared/widgets/navigate_to_screen.dart';
import '../login/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isPassword=true;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Register"),
      ),
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
              children: [
                SizedBox(height: 20,),

                Text("Welcome Back",style:Theme.of(context).textTheme.bodyLarge),
                const Text("Register now to browse our hot offers"),
                const SizedBox(height: 30,),
                defaultFormField(
                  label: "User Name",
                  prefix: Icons.account_circle_outlined,
                  type: TextInputType.name,

                ),
                const SizedBox(height: 30,),

                defaultFormField(
                  label: "Email Address",
                  prefix: Icons.email_outlined,
                  type: TextInputType.emailAddress,

                ),
                const SizedBox(height: 30,),
                defaultFormField(
                  label: "Phone",
                  prefix: Icons.phone,
                  type: TextInputType.phone,

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

                // const SizedBox(height: 30,),

                // Row(
                //   mainAxisAlignment: MainAxisAlignment.end,
                //   children: [
                //     Text(
                //       "Forget Password",
                //       style:Theme.of(context).textTheme.bodySmall ,
                //
                //
                //     ),
                //   ],
                // ),

                const SizedBox(height: 30,),

                defaultButton(
                  text: "Register",
                  onPressed: (){},

                ),
                const SizedBox(height: 10,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    Text(
                      'have an account?',
                      style:Theme.of(context).textTheme.bodySmall ,
                    ),
                    TextButton(
                      onPressed: () {
                        navigateTo(context,  LoginScreen());

                      },
                      child: Text('Login Now',style: TextStyle(fontSize: 16)),
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
