import 'package:flutter/material.dart';

import '../../../models/on_boarding_model.dart';
import '../../../shared/styles/colors.dart';

Widget buildOnBoardingItem(OnBoardingModel onBoarding)=>Column(
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Text("${onBoarding.title}",style: const TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w700,
      color: AppColor.black,
      fontFamily: 'Jannah',
    ),),

    const SizedBox(height: 60,),
    Image(image: AssetImage("${onBoarding.image}"),width: 200,height: 220,fit: BoxFit.fill),
    const SizedBox(height: 40,),
    Container(
      width: double.infinity,
      alignment: Alignment.center,
      child:  Text(
        "${onBoarding.body}",
        textAlign: TextAlign.center,

      ),
    ),



  ],
);


