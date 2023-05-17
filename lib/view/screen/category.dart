import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_app_advanced/view/widgets/shared/handling_dataview.dart';

import '../../controller/category_controller.dart';
import '../widgets/category/build_category_Item.dart';
import '../widgets/category/custam_bar_category.dart';

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
              customBarCategory(context),
              const ListCategoryItem(),

            ],
          ),
        );
      }
    );
  }
}


