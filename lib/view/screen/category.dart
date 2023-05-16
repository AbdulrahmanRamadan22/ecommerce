import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:store_app_advanced/view/widgets/shared/handling_dataview.dart';

import '../../controller/category_controller.dart';
import '../widgets/build_category_Item.dart';
import '../widgets/custam_bar_category.dart';

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


