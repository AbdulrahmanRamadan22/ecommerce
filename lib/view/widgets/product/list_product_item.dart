import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:store_app_advanced/shared/styles/colors.dart';

import '../../../models/product_model.dart';



class ListProductItem extends StatelessWidget {
  const ListProductItem({Key? key, required this.product}) : super(key: key);
  final DataModel product;
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Card(
      elevation: 5,
      color: AppColor.gray3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: const BorderSide(
          color: AppColor.gray1,
          width: 1.25,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: screenSize.width * 0.02,
          vertical: screenSize.height * 0.02,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Stack(
                alignment: AlignmentDirectional.bottomStart,
                children: [
                  CachedNetworkImage(

                    imageUrl: ("${product.image}"),
                    width: double.infinity,
                    height: 130,

                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: screenSize.width * 0.01),
                    color: Colors.red,
                    child: const Text(
                      "DISCOUNT",
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "${product.name}",
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: TextStyle(
                color: Colors.black,
                height: 1.3,
                fontSize: screenSize.width * 0.044,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Text(
                  "${product.price}",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: screenSize.width * 0.04,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  "${product.oldPrice}",
                  style: TextStyle(
                    fontSize: screenSize.width * 0.038,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
                const Spacer(),
                IconButton(

                  padding: EdgeInsets.zero,
                  onPressed: () {},
                  icon: CircleAvatar(
                    radius: screenSize.width * 0.04,
                    backgroundColor: AppColor.gray,
                    child: Icon(
                      Icons.favorite_border,
                      size: screenSize.width * 0.05,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}