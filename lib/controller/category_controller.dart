import 'package:get/get.dart';

import '../data/helper/status_request.dart';
import '../data/remote/category.dart';
import '../data/remote/home.dart';
import '../shared/function/handing_datacontroller.dart';
import '../shared/services/services.dart';

abstract class CategoryController extends GetxController {
  Future<void> initialData();
  Future<void> getData();

}

class CategoryControllerImplement extends CategoryController {
  MyServices myServices = Get.find();


  CategoryData categoryData = CategoryData(Get.find());

  List categories = [];



  StatusRequest statusRequest = StatusRequest.none;

  @override
  Future<void> initialData() async {

  }

  @override
  void onInit() {
    super.onInit();
    initialData();
    getData();
  }

  @override
  Future<void> getData() async {
    statusRequest = StatusRequest.loading;
    var response = await categoryData.category();

    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (statusRequest == StatusRequest.success) {
      if (response['status'] == true) {

        categories.addAll(response["data"]['data']);
        // products.clear();
        // products.addAll(response["data"]['products']);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }


}