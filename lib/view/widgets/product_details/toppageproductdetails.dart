import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/product _details_controller.dart';
import '../../../shared/styles/colors.dart';

class TopProductPageDetails extends GetView<ProductDetailsControllerImplement> {
  const TopProductPageDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 160,
          decoration:  const BoxDecoration(
              color: AppColor.defaultColor,
            borderRadius: BorderRadius.only(bottomLeft:Radius.circular(20),bottomRight: Radius.circular(20)),

          ),
        ),
        Positioned(
            top: 30.0,
            right: Get.width / 8,
            left: Get.width / 8,
            child: Hero(

              tag: "gg${controller.productModel.id}",

              child: CachedNetworkImage(
                imageUrl:
                controller.productModel.image!,
                height: 240,
                // fit: BoxFit.fill,
              ),
            ))
      ],
    );
  }
}