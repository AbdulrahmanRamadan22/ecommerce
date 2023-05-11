import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/layout_controller.dart';
import '../view/widgets/layout/custom_bottom_appbar_home.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: LayoutScreenControllerImplement(),
        builder: (controller) {
          return Scaffold(
            appBar: AppBar(
              toolbarHeight: 0,
            ),
            floatingActionButton: FloatingActionButton(
                onPressed: () {},
                child: const Icon(Icons.shopping_cart_sharp)),
            floatingActionButtonLocation:
            FloatingActionButtonLocation.centerDocked,
            body: controller.listScreen[controller.currentScreen],
            bottomNavigationBar: const CustomBottomAppBarLayout(),
          );
        });
  }
}






