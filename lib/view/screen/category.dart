import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_app_advanced/view/widgets/shared/handling_dataview.dart';

import '../../controller/category_controller.dart';
import '../widgets/category/build_category_Item.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(CategoryControllerImplement());

    return GetBuilder<CategoryControllerImplement>(

        builder: (controller) {
        return HandlingDataView(
          statusRequest: controller.statusRequest,
          widget:
           Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                // child: customBar
                //   (context: context,
                //   hintText:"Find Product" ,
                //   onChanged: (String value) {
                //     controller.onSearchProduct();
                //     controller.checkSearch(value);
                //
                //   },
                //   onIconSearch: () {
                //     controller.onSearchProduct();
                //   },
                //   myController:controller.search!,
                //   // onIconFavorite: () {
                //   //
                //   //
                //   // }
                // ),

              ),
              const ListCategoryItem(),

            ],
          ),
        );
      }
    );
  }
}


