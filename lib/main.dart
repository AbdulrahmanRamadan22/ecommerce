import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_app_advanced/shared/services/services.dart';
import 'package:store_app_advanced/shared/styles/themes.dart';
import 'package:store_app_advanced/test.dart';
import 'package:store_app_advanced/view/screen/home.dart';
import 'package:store_app_advanced/view/test_view.dart';

import 'bindings/intialbindings.dart';
import 'layout/layout.dart';
import 'routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();

  runApp(const StoreApp());
}


class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages:routes,
      debugShowCheckedModeBanner: false,
      title: 'Store',
      theme: lightTheme,
      initialBinding: initialBindings(),
       );
  }
}

