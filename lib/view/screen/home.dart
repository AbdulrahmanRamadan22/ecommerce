import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_app_advanced/view/widgets/shared/handling_dataview.dart';

import '../../controller/home_controller.dart';
import '../widgets/home/banner.dart';
import '../widgets/home/category_home.dart';
import '../widgets/home/prodect_home.dart';
import '../widgets/shared/custom _bar.dart';
import '../widgets/home/title_home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     Get.put(HomeControllerImplement());

    return
       GetBuilder<HomeControllerImplement>(
        builder: (controller) {
          return HandlingDataView(
            statusRequest: controller.statusRequest,
            widget:
             SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    customBar
                      (context: context,
                        hintText:"Find Product" ,
                        onChanged: (String value) {  },
                        onIconSearch: () {  }),
                    bannerCard(),
                    titleHome("Category", context),
                    const CategoryItem(),

                    titleHome("Products", context),

                    const ListsProductItem(),
                  ],
                ),
              ),
            ),
          );
        }
      );

  }
}