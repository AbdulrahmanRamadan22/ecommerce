import 'package:get/get.dart';
import 'package:store_app_advanced/shared/constants/routes.dart';

import '../data/helper/status_request.dart';
import '../data/remote/home.dart';
import '../shared/function/handing_datacontroller.dart';
import '../shared/services/services.dart';

abstract class HomeController extends GetxController {
  Future<void> initialData();
  Future<void> getData();
  goTOProduct(List categories, int selectedCat);
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
    super.onInit();
    initialData();
    getData();
  }

  @override
  Future<void> getData() async {
    statusRequest = StatusRequest.loading;
    var response = await homeData.home(token: token);

    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (statusRequest == StatusRequest.success) {
      if (response['status'] == true) {
        categories.clear();
        categories.addAll(response["data"]['categories']);
        products.clear();
        products.addAll(response["data"]['products']);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  goTOProduct(categories, selectedCat) {
   Get.toNamed(AppRoute.product,
     arguments: {
       "categories": categories,
       "selectedcat": selectedCat
     }
   );
  }
}