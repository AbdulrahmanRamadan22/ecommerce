import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_app_advanced/models/home_model.dart';

import '../../../controller/cart_controller.dart';
import '../../../controller/product _details_controller.dart';
import '../../../models/cart_model.dart';
import '../../../shared/styles/colors.dart';

class ProductCart extends GetView<CartController> {
  const ProductCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: ListView.separated(
          itemBuilder: (context, index) {
            return ListProductCart(
              cartProduct: controller.dataCart[index],
            );
          },
          itemCount: controller.dataCart.length,
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(
              height: 5,
            );
          },
        ),
      ),
    );
  }
}


class ListProductCart extends GetView<CartController> {
  const ListProductCart({Key? key, required this.cartProduct})
      : super(key: key);

  final CartItems cartProduct;


  @override
  Widget build(BuildContext context) {

    ProductDetailsControllerImplement productDetailsController= Get.put(ProductDetailsControllerImplement());

    return GetBuilder<CartController>(

    builder: (controller) {
        return InkWell(

          onTap: (){


          },
          child: SizedBox(
            height: 150,
            child: Card(
              color: Colors.white,
              elevation: 5,
              child: Row(
                children: [
                  Container(
                    height: 150,
                    color: AppColor.gray3,
                    width: 120,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: CachedNetworkImage(
                        imageUrl: ("${cartProduct.product!.image}"),
                        // height: double.infinity,
                        // width: double.infinity,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "${cartProduct.product!.name}",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontSize: 18, color: AppColor.black),
                        ),
                        const SizedBox(
                          height: 5,
                        ),

                        Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  "${cartProduct.product!.price} EGP",
                                  style: const TextStyle(
                                    color: AppColor.defaultColor,
                                    fontSize: 16,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: 130,
                                  height: 40,
                                  color: Colors.grey.shade200,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [

                                       IconButton(
                                            onPressed: () {
                                              add(){

                                              }

                                             // controller.add();

                                              // cartController.addAndRemove(cartProduct.product!.id.toString(),
                                              //     cartController.count.toString()
                                              // );

                                            },
                                            icon: const Icon(
                                              Icons.add,
                                              color: Colors.black,
                                            ),
                                            padding: EdgeInsets.zero,
                                            iconSize: 18,
                                          ),


                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "${cartProduct.quantity}",
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                            fontSize: 20, color: Colors.black),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      IconButton(
                                        onPressed: () {

                                          // controller.remove();


                                          // cartController.remove();

                                          // cartController.addAndRemove(cartProduct.product!.id.toString(),
                                          //     cartController.count.toString()
                                          // );

                                        },
                                        icon: const Icon(
                                          Icons.remove,
                                          color: Colors.black,
                                        ),
                                        iconSize: 18,
                                        padding: EdgeInsets.zero,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),

                               SizedBox(
                                width: 60,
                                height: 60,
                                child: GetBuilder<CartController>(
                                  builder: (controller) {
                                    return IconButton(
                                      onPressed: () {
                                        controller.removeCart(cartProduct.id.toString());
                                        controller.refreshPage();
                                      },
                                      icon: const Icon(
                                        Icons.delete_outline,
                                        color: AppColor.red,
                                      ),
                                      iconSize: 30,
                                      padding: EdgeInsets.zero,
                                    );
                                  }
                                ),
                              ),

                          ],
                        ),

                        // GetBuilder<MyFavoriteController>(
                        //     builder: (context) {
                        //       return IconButton(
                        //         onPressed: (){
                        //
                        //           // controller.removeFavorite(favoriteProduct.id_fav!.toString());
                        //           // ignore: invalid_use_of_protected_member
                        //         },
                        //         icon: const Icon(
                        //           Icons.delete_outline,
                        //           color: AppColor.red,
                        //         ),
                        //       );
                        //     }
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }
    );
  }
}


