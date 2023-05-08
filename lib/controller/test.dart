// import 'package:get/get.dart';
//
// import '../data/remote/status_request.dart';
// import '../data/remote/test_data.dart';
// import '../shared/function/handing_datacontroller.dart';
//
// class TestController extends GetxController {
//   TestData testData = TestData(Get.find()) ;
//
//
//
//
//   List<dynamic> data = [];
//
//
//   late StatusRequest statusRequest;
//
//   getData() async {
//     statusRequest = StatusRequest.loading;
//     var response = await testData.getData();
//     print("=============================== Controller $response ") ;
//     statusRequest = handlingData(response);
//     if (StatusRequest.success == statusRequest) {
//       data.addAll(response['data']);
//     }
//     update();
//   }
//
//   @override
//   void onInit() {
//     getData();
//     super.onInit();
//   }
// }