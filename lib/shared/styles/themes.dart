import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:store_app_advanced/shared/styles/colors.dart';


ThemeData darkTheme = ThemeData(

  primarySwatch:AppColor.mainColor,
  scaffoldBackgroundColor: AppColor.dark,
  appBarTheme: const AppBarTheme(
    titleSpacing: 20.0,
    centerTitle: true,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: AppColor.dark,
      statusBarIconBrightness: Brightness.light,
    ),
    backgroundColor: AppColor.dark,

    elevation: 0.0,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
    ),
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    selectedItemColor:AppColor.defaultColor,
    unselectedItemColor: Colors.grey,
    elevation: 20.0,
    backgroundColor: AppColor.dark,
  ),
  textTheme: const TextTheme(
    bodyMedium:TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: AppColor.white,
    ),
  ),
  fontFamily: 'Jannah',
);



ThemeData lightTheme = ThemeData(
  // primarySwatch:AppColor.mainColor,
  scaffoldBackgroundColor:AppColor.white,
  appBarTheme: const AppBarTheme(
    titleSpacing: 20.0,
    centerTitle: true,

    // backwardsCompatibility: false,
    systemOverlayStyle: SystemUiOverlayStyle(
      // statusBarBrightness: Brightness.light,

      statusBarColor: AppColor.white,
      statusBarIconBrightness: Brightness.dark,
    ),
    backgroundColor: Colors.white,
    elevation: 0.0,
    titleTextStyle: TextStyle(
      color: AppColor.black,
      fontSize: 20.0,
      fontWeight: FontWeight.bold,

    ),
    iconTheme: IconThemeData(
      color: AppColor.black,
    ),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    selectedItemColor:AppColor.defaultColor,
    unselectedItemColor: Colors.grey,
    elevation: 20.0,
    backgroundColor: Colors.white,
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: AppColor.black,
    ),
    bodyMedium: TextStyle(
      fontSize: 16,
      // fontWeight: FontWeight.w600,
      color: AppColor.gray,



    ),
  ),
  fontFamily: 'Jannah',
);










