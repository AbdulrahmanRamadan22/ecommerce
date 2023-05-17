import 'package:get/get.dart';
import 'package:store_app_advanced/shared/constants/routes.dart';

import '../data/helper/status_request.dart';
import '../data/remote/home.dart';
import '../models/product_model.dart';
import '../shared/function/handing_datacontroller.dart';
import '../shared/services/services.dart';

abstract class HomeController extends GetxController {
  initialData();
  Future<void> getData();
  goToItems(List categories, int selectedCat, String categoryid);

  goToPageProductDetails(DataModel productModel);
}

class HomeControllerImplement extends HomeController {

  MyServices myServices = Get.find();


  late String token;
  String? name;
  int? id;
  String? email;
  String? phone;
  String? image;
  int? points;
  int? credit;


  HomeData homeData = HomeData(Get.find());

  List categories = [];

  List products = [];

  StatusRequest statusRequest = StatusRequest.none;

  @override
  Future<void> initialData() async {

    token = myServices.sharedPreferences.getString("token") ?? "";
    name = myServices.sharedPreferences.getString("name");
    email = myServices.sharedPreferences.getString("email");
    phone = myServices.sharedPreferences.getString("phone");
    image = myServices.sharedPreferences.getString("image");
    id = myServices.sharedPreferences.getInt("id");
    points = myServices.sharedPreferences.getInt("points");
    credit = myServices.sharedPreferences.getInt("credit");

  }

  @override
  void onInit() {
    initialData();
    getData();
    super.onInit();

  }

  @override
  Future<void> getData() async {
    statusRequest = StatusRequest.loading;
    var response = await homeData.home(token: token);

    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (statusRequest == StatusRequest.success) {
      if (response['status'] == true) {

        categories.addAll(response["data"]['categories']);
        products.addAll(response["data"]['products']);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  goToItems(categories, selectedCat, categoryid) {
    Get.toNamed(AppRoute.product, arguments: {
      "categories": categories,
      "selectedcat": selectedCat,
      "catid": categoryid
    });
  }

  @override
  goToPageProductDetails(DataModel productModel) {
    Get.toNamed("productDetails", arguments: {
      "productModel": productModel});

  }


}