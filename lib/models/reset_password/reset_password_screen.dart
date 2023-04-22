import 'package:flutter/material.dart';
import 'package:store_app_advanced/modules/login/login_screen.dart';
import 'package:store_app_advanced/shared/widgets/navigate_to_screen.dart';

import '../../shared/widgets/default_button.dart';
import '../../shared/widgets/default_form_field.dart';

class ResetPasswordScreen extends StatelessWidget {
  bool isPassword=true;
   ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reset Password"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
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
                    suffixPressed: (){
                      // setState(() {
                      //   isPassword =! isPassword;
                      //
                      // });
                    }
                ),

                const SizedBox(height: 30,),
                defaultFormField(
                    label: "Confirm Password",
                    prefix: Icons.lock_outline,
                    type: TextInputType.visiblePassword,
                    suffix:isPassword? Icons.visibility_outlined:Icons.visibility_off_outlined,
                    isPassword: isPassword,
                    suffixPressed: (){
                      // setState(() {
                      //   isPassword =! isPassword;
                      //
                      // });
                    }
                ),
                SizedBox(height: 50,),

                defaultButton(
                  text: "Save",
                  onPressed: (){
                    navigateTo(context, LoginScreen());
                  },

                ),

              ]
          ),
        ),
      ),
    );
  }
}
