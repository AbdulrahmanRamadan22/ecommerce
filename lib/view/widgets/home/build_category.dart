import 'package:flutter/material.dart';
import 'package:store_app_advanced/shared/styles/colors.dart';

Widget buildCategoryItem( ) => Container(
  height: 120,
  width: 120,
  color: AppColor.gray2,
  child:   Column(
    children: [
      const Image(
        image: AssetImage("assets/images/phone.png"),

        height: 72.0,
        width: 80.0,
        // fit: BoxFit.cover,

      ),
      Container(


        color: AppColor.black.withOpacity(

          .7,

        ),

        width: 120.0,



        child: const Text(

         "SuperMarket",

          textAlign: TextAlign.center,

          maxLines: 1,

          overflow: TextOverflow.ellipsis,

          style: TextStyle(

            color: Colors.white,

            fontSize: 14,

          ),

        ),

      ),

    ],

  ),
);