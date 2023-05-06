import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_app_advanced/shared/styles/colors.dart';

import '../controller/layout_controller.dart';
import '../view/widgets/layout/custom_bottom_appbar_home.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GetBuilder(
      init: LayoutScreenControllerImplement(),
      builder: (controller ) {
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

          // bottomNavigationBar: BottomNavigationBar(
          //     // backgroundColor: AppColor.gray3,
          //     elevation: 20,
          //     onTap: (index) {
          //       controller.changeScreen(index);
          //     },
          //     currentIndex:controller.currentScreen ,
          //     items:  const [
          //       BottomNavigationBarItem(
          //         icon: Icon(Icons.home),
          //         label: "Home",
          //       ),
          //       BottomNavigationBarItem(
          //         icon: Icon(Icons.apps),
          //         label: "Category",
          //       ),
          //       BottomNavigationBarItem(
          //         icon: Icon(Icons.favorite),
          //         label: "Favorite",
          //       ),
          //       BottomNavigationBarItem(
          //         icon: Icon(Icons.shopping_cart),
          //         label: "Cart",
          //       ),
          //
          //     ],
          //   ),



        );
      }
    );
  }
}
