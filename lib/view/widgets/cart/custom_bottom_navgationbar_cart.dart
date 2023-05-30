
import 'package:flutter/material.dart';

import '../../../shared/styles/colors.dart';
import '../shared/default_button.dart';

class BottomNavgationBarCart extends StatelessWidget {
  final String price ;
  final String shipping ;
  final String totalPrice ;
  const BottomNavgationBarCart({Key? key, required this.price, required this.shipping, required this.totalPrice}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text("price", style: TextStyle(fontSize: 16))),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text("$price \$", style: const TextStyle(fontSize: 16)))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: const Text("shipping", style: TextStyle(fontSize: 16))),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child:  Text("$shipping \$", style: const TextStyle(fontSize: 16)))
          ],
        ),
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: const Text("Total Price",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColor.defaultColor))),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text("$totalPrice \$",
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColor.defaultColor)))
          ],
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(right: 20,left: 20,bottom: 10),
          child: defaultButton(
            onPressed: (){},
            text: "Buy Now",
          ),
        ),
      ],
    );
  }
}