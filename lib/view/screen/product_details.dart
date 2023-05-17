import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../controller/product _details_controller.dart';
import '../../shared/styles/colors.dart';
import '../widgets/product_details/priceandcount.dart';
import '../widgets/product_details/toppageproductdetails.dart';

class  ProductDetailsScreen extends StatelessWidget {
  const  ProductDetailsScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProductDetailsControllerImplement controller =
    Get.put(ProductDetailsControllerImplement());
    return Scaffold(
         appBar: AppBar(
           leading:Padding(
             padding: const EdgeInsets.all(10.0),
             child: FloatingActionButton(
               heroTag: "aroow",
               elevation: 0,
               backgroundColor: AppColor.white,
               onPressed: () {
                 Navigator.pop(context);
               },
               child: const Icon(
                 Icons.arrow_back,
                 color: AppColor.gray,
               ),
             ),
           ),
             backgroundColor: AppColor.defaultColor,
           systemOverlayStyle:  const SystemUiOverlayStyle(
             statusBarColor: Colors.transparent, // Status bar
           ),
         ),

        bottomNavigationBar: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            height: 45,

            child: MaterialButton(

                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: AppColor.defaultColor,
                onPressed: () {},
                child: const Text(
                  "Add To Cart",
                  style: TextStyle(
                    fontSize: 16,
                      color: Colors.white, fontWeight: FontWeight.bold),
                ))),
        body: ListView(

            children: [

          const TopProductPageDetails(),

          const SizedBox(
            height: 100,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [

              Text("${controller.productModel.name}",
                  style: const TextStyle(color: AppColor.black,fontSize: 20,),
              ),

              PriceAndCountItems(
                  onAdd: () {}, onRemove: () {}, price: "${controller.productModel.price}", count: "2"),
              const SizedBox(height: 20),
              Text(
                  "${controller.productModel.description}",
                  style: const TextStyle(color: AppColor.gray,fontSize: 16),
              ),

              // const SubitemsList()
            ]),
          )
        ]));
  }
}
