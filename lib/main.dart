import 'package:flutter/material.dart';
import 'package:store_app_advanced/shared/styles/colors.dart';
import 'package:store_app_advanced/shared/styles/themes.dart';

import 'modules/on_boarding/on_boarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Store',
      theme: lightTheme,
      home:  OnBoardingScreen(),
    );
  }
}

