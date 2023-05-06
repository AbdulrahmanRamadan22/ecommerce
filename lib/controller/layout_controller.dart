import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:store_app_advanced/view/screen/auth/cart.dart';
import 'package:store_app_advanced/view/screen/category.dart';
import 'package:store_app_advanced/view/screen/favorite.dart';

import '../view/screen/home.dart';

abstract class LayoutScreenController extends GetxController {
  changeScreen(int index);
}

class LayoutScreenControllerImplement extends LayoutScreenController {
  int currentScreen = 0;

  List<Widget> listScreen = [
     HomeScreen(),
    CategoryScreen(),

    FavoriteScreen(),
    CartScreen(),

  ];

  List  titleBottomAppbar = [
    "Home" ,
    "Category" ,

    "Profile" ,
    "Favorite"
  ] ;
  List<IconData>  iconBottom = [
 Icons.home,
    Icons.apps,
    Icons.account_circle,
    Icons.favorite,




  ] ;


  @override
  // ignore: avoid_renaming_method_parameters
  void changeScreen(int index) {
    currentScreen = index;
    update();
  }
}