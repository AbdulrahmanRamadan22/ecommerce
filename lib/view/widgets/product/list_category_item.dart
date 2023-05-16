import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/home_controller.dart';
import '../../../models/home_model.dart';
import '../../../shared/styles/colors.dart';

class ListCategoryItems extends GetView<HomeControllerImplement> {
  const ListCategoryItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   SizedBox(
      height: MediaQuery.of(context).size.height / 8,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => BuildCategoryItem(
          i: index,

          categoriesModel:Categories.fromJson(controller.categories[index]),
        ),
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemCount: controller.categories.length,
      ),
    );
  }
}


class BuildCategoryItem extends GetView<HomeControllerImplement> {
  const BuildCategoryItem({Key? key, required this.categoriesModel,required this.i}) : super(key: key);
  final Categories categoriesModel;
  final int? i;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        // controller.goTOProduct(controller.categories,i!);
      },
      child: Container(
        child: Text(
          "${categoriesModel.name}",
          textAlign: TextAlign.center,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: AppColor.gray,
            fontSize: MediaQuery.of(context).size.width * 0.045,
          ),
        ),
      ),
    );
  }
}



