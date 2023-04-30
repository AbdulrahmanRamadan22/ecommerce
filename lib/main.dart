import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_app_advanced/shared/services/services.dart';
import 'package:store_app_advanced/shared/styles/themes.dart';

import 'routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
     getPages:routes,
      debugShowCheckedModeBanner: false,
      title: 'Store',
      theme: lightTheme,
       );
  }
}

