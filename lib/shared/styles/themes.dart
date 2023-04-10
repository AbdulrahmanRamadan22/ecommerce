import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:store_app_advanced/shared/styles/colors.dart';

ThemeData lightThemeData() {
  return ThemeData(
    scaffoldBackgroundColor: AppColor.white,
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: AppColor.white,
        statusBarBrightness: Brightness.dark,
      ),

      backgroundColor: AppColor.white,
      elevation: 0.0,
      titleTextStyle: TextStyle(
        color: AppColor.black,
        fontSize: 18,
        fontWeight: FontWeight.bold,
        fontFamily: "Cairo",
      ),

    ),
      bottomNavigationBarTheme:const BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColor.defaultColor,

      ),

  );
}














//     textTheme: TextTheme(
//       headlineMedium: TextStyle(
//         color: maincolor,
//       ),
//       headlineSmall: TextStyle(
//         color: dark,
//       ),
//       bodyLarge: const TextStyle(
//         color: Colors.black,
//       ),
//       bodyMedium: const TextStyle(
//         color: Colors.black,
//       ),
//       bodySmall: const TextStyle(
//         color: Colors.white,
//       ),
//     ),
//     scaffoldBackgroundColor: white,
//     appBarTheme: AppBarTheme(
//       elevation: 0,
//       backgroundColor: white,
//       titleTextStyle: TextStyle(
//         color: dark,
//       ),
//       iconTheme: IconThemeData(
//         color: dark,
//       ),
//     ),
//     fontFamily: 'Poppins',
//     primarySwatch: maincolor,
//     bottomNavigationBarTheme: BottomNavigationBarThemeData(
//       type: BottomNavigationBarType.fixed,
//       showSelectedLabels: true,
//       showUnselectedLabels: true,
//       backgroundColor: white,
//       selectedIconTheme: IconThemeData(
//         color: maincolor,
//       ),
//       unselectedIconTheme: const IconThemeData(
//         color: Colors.grey,
//       ),
//       selectedLabelStyle: TextStyle(
//         color: maincolor,
//       ),
//       unselectedItemColor: dark,
//     ),
//   );
// }