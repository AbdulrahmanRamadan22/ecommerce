import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:store_app_advanced/view/widgets/shared/handling_dataview.dart';
import '../../../controller/search_product.dart';
import '../../../shared/styles/colors.dart';
import '../../widgets/product_details/priceandcount.dart';
import '../../widgets/product_details/toppageproductdetails_search.dart';
import '../../widgets/shared/default_button.dart';

class ProductDetailsSearch extends StatelessWidget {
  const ProductDetailsSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SearchControllerImplement controller = Get.put(SearchControllerImplement());
    return Scaffold(
        appBar: AppBar(
          title: const Text("Product Details",
              style: TextStyle(color: AppColor.gray)),
          leading: Padding(
            padding: const EdgeInsets.all(10.0),
            child: FloatingActionButton(
              heroTag: "arrow",
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
          backgroundColor: AppColor.gray3,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent, // Status bar
          ),
        ),
        bottomNavigationBar: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          // height: 45,
          child: GetBuilder<SearchControllerImplement>(builder: (controller) {
            return HandlingDataView(
              statusRequest: controller.statusRequest,
              widget: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  defaultButton(
                    onPressed: () {
                      controller.cartController.addAndRemove(
                          controller.searchModel.id.toString(),
                          controller.count.toString());
                    },
                    text: "Add To Cart",
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  defaultButton(
                    onPressed: () {},
                    text: "Buy Now",
                    backGround: AppColor.gray,
                  ),
                ],
              ),
            );
          }),
          // child:
          //
          // MaterialButton(
          //
          //     shape: RoundedRectangleBorder(
          //         borderRadius: BorderRadius.circular(10)),
          //     color: AppColor.defaultColor,
          //     onPressed: () {},
          //     child: const Text(
          //       "Add To Cart",
          //       style: TextStyle(
          //         fontSize: 16,
          //           color: Colors.white, fontWeight: FontWeight.bold),
          //     )
          // )
        ),
        body: GetBuilder<SearchControllerImplement>(
          builder: (controller) {
            return HandlingDataView(
              statusRequest: controller.statusRequest,
              widget:
               ListView(children: [
                const TopProductPageDetailsSearch(),
                const SizedBox(
                  height: 100,
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  child:
                      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Text(
                      "${controller.searchModel.name}",
                      style: const TextStyle(
                        color: AppColor.black,
                        fontSize: 20,
                      ),
                    ),

                    PriceAndCountItems(
                        onAdd: () {
                          controller.add();
                        },
                        onRemove: () {
                          controller.remove();
                        },
                        price: "${controller.searchModel.price}",
                        count: controller.count.toString()),
                    const SizedBox(height: 20),
                    Text(
                      "${controller.searchModel.description}",
                      style: const TextStyle(color: AppColor.gray, fontSize: 16),
                    ),

                    // const SubitemsList()
                  ]),
                )
              ]),
            );
          }
        ));
  }
}
