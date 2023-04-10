import 'package:flutter/material.dart';

Widget defaultFormField({
  @required TextEditingController? controller,
  @required TextInputType? type,
  Function(String)? onSubmit,
  Function(String)? onChange,
  Function()? onTap,
  Function()? suffixPressed,
  bool isPassword = false,
  @required String? Function(String?)? validate,
  @required String? label,
  @required IconData? prefix,
  IconData? suffix,
  // bool isClickable = true,

}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      onFieldSubmitted: onSubmit,
      onChanged: onChange,
      onTap: onTap,
      validator: validate,
      // enabled: isClickable,


      decoration: InputDecoration(
        labelText: label,


        border: const OutlineInputBorder(),


        prefixIcon: Icon(
          prefix,
        ),
        suffixIcon: suffix != null ? IconButton(
          icon: Icon(
            suffix,
          ),
          onPressed: suffixPressed,
        ) : null,


      ),
    );