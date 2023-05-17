import 'package:get/get.dart';
import '../models/product_model.dart';

abstract class ProductDetailsController extends GetxController {}

class ProductDetailsControllerImplement extends ProductDetailsController {
  late DataModel productModel;

  intialData() {
    productModel = Get.arguments['productModel'];
  }

  // List subitems = [
  //   {"name": "red", "id": 1, "active": '0'},
  //   {"name": "yallow", "id": 2, "active": '0'},
  //   {"name": "black", "id": 3, "active": '1'}
  // ];

  @override
  void onInit() {
    intialData();
    super.onInit();
  }
}