import 'package:get/get.dart';

import '../data/helper/status_request.dart';
import '../data/remote/product.dart';
import '../shared/function/handing_datacontroller.dart';
import '../shared/services/services.dart';

abstract class ProductController extends GetxController {
  intialData();
  changeCat(int val, String catval);
  getItems(String categoryid);
}

class ProductControllerImplement extends ProductController {
  List categories = [];
  String? catid;
  int? selectedCat;
  Product product = Product(Get.find());


  MyServices myServices = Get.find();



  List data = [];

  StatusRequest statusRequest = StatusRequest.none;



  @override
  void onInit() {
    intialData();
    super.onInit();
  }

  @override
  intialData() {
    categories = Get.arguments['categories'];
    selectedCat = Get.arguments['selectedcat'];
    catid = Get.arguments['catid'];
    getItems(catid!);
  }

  @override
  changeCat(val, catval) {
    selectedCat = val;
    catid = catval;
    getItems(catid!);
    update();
  }

  @override
  getItems(categoryId) async {
    data.clear();
    statusRequest = StatusRequest.loading;
    var response = await product.getProduct(categoryId);

    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (statusRequest == StatusRequest.success) {
      if (response['status'] == true) {
        data.addAll(response["data"]['data']);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }
}