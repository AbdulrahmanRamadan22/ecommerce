import 'package:flutter/material.dart';

import '../../../shared/styles/colors.dart';

Widget buildCategoryItem(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.29,

    color: AppColor.gray2,
    child: Column(
      children: [
        Flexible(
          flex: 3,
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(
              "assets/images/phone.png",
              fit: BoxFit.contain,
            ),
          ),
        ),
        Flexible(
          flex: 1,
          child: Container(
            color: AppColor.black.withOpacity(.7),
            alignment: Alignment.center,
            child: Text(
              "SuperMarket",
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.width * 0.035,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}