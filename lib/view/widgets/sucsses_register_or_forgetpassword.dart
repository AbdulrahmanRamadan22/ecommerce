import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_app_advanced/shared/constants/routes.dart';

import '../../shared/styles/colors.dart';
import 'default_button.dart';

  Widget success(
{
  required String text,
}

      ){

  return  Container(
    padding: const EdgeInsets.all(15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,

        children: [
       const Center(
          child: Icon(
            Icons.check_circle_outline,
            size: 200,
            color: AppColor.defaultColor,
          )),
      const Text("congratulations",style: TextStyle(fontSize: 30)),
       Text(" $text",textAlign: TextAlign.center,style: TextStyle(fontSize: 24,)),


      const Spacer(),
      defaultButton(
        text: "Go To Login",
          onPressed: () {
          Get.offAllNamed(AppRoute.login);
          }),
      const SizedBox(height: 30)
    ]),
  );
}