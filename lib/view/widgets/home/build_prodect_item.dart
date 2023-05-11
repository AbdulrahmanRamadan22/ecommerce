import 'package:flutter/material.dart';
import 'package:store_app_advanced/shared/styles/colors.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({Key? key}) : super(key: key);

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
                  Image(
                    image: AssetImage("assets/images/redme.png"),
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
              "SAMSUNG Galaxy S22 Ultra Cell Phone, Factory Unlocked Android Smartphone, 512GB, 8K Camera & Video, Brightest Display Screen, S Pen, Long Battery Life, Fast 4nm Processor, US Version, Green",
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
                  "500 EGP",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: screenSize.width * 0.04,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  "500",
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