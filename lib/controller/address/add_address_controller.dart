import 'dart:async';

import 'package:get/get.dart';

import '../../data/helper/status_request.dart';
import '../../shared/services/services.dart';

class AddAddressController extends GetxController{

  StatusRequest statusRequest = StatusRequest.none;
  MyServices myServices = Get.find();

  String? lat;
  String? long;


  // ignore: prefer_typing_uninitialized_variables
  // var address;






  Future<void> initialData() async {

    lat=Get.arguments['lat'];

    long=Get.arguments['long'];


    print(lat);

    print(long);


    //
    // address = myServices.sharedPreferences.getInt("address");

  }







  @override

  void onInit() {
    initialData();
    super.onInit();
  }

}
