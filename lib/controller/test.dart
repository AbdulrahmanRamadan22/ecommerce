import 'package:get/get.dart';

import '../shared/services/services.dart';

class HomeController extends GetxController {}

class HomeControllerImp extends HomeController {
  MyServices myServices = Get.find();

  String? name;
  int? id;
  String? email;
  String? phone;
  String? image;
  int? points;
  int? credit;
  String? token;

  initialData() {

    name = myServices.sharedPreferences.getString("name") ;

    id = myServices.sharedPreferences.getInt("id");
    email = myServices.sharedPreferences.getString("email") ;
    phone = myServices.sharedPreferences.getString("phone") ;
    image = myServices.sharedPreferences.getString("image") ;

    points = myServices.sharedPreferences.getInt("points");
    credit = myServices.sharedPreferences.getInt("credit");

    token = myServices.sharedPreferences.getString("token") ;

  }

  @override
  void onInit() {
    initialData();
    super.onInit();
  }
}