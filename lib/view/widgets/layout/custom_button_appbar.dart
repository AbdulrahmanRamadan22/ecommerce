import 'package:flutter/material.dart';

import '../../../shared/styles/colors.dart';

class CustomButtonAppBar extends StatelessWidget {
  final void Function()? onPressed;
  final String textButton;
  final IconData iconData;
  final bool? active   ;
  const CustomButtonAppBar(
      {Key? key,
        required this.textButton,
        required this.iconData,
        required this.onPressed,
        required this.active})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Icon(iconData,
            color: active == true ? AppColor.defaultColor : AppColor.gray1),
        Text(textButton,
            style: TextStyle(
                color: active == true ? AppColor.defaultColor:AppColor.gray1))
      ]),
    );
  }
}