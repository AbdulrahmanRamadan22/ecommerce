import 'package:get/get.dart';
import '../data/remote/http_helper.dart';

// ignore: camel_case_types
class initialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(Api()) ;
  }
}