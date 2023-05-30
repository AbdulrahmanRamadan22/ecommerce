import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_app_advanced/shared/constants/routes.dart';
import 'package:store_app_advanced/shared/styles/colors.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        "Address",
        style: TextStyle(color: AppColor.gray, fontSize: 24),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Get.toNamed(AppRoute.map);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
