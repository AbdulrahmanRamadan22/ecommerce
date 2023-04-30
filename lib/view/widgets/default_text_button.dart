import 'package:flutter/material.dart';

import '../../shared/styles/colors.dart';


defaultTextButton({ required String text, required Function() onPressed,double fontSize=16,Color color=AppColor.defaultColor }

    ){
  return TextButton(
      onPressed: onPressed,
      child:Text(text,
        style: TextStyle(fontSize: fontSize,fontFamily: "Jannah",color:color),)


  );


}