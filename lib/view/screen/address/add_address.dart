import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_app_advanced/view/widgets/shared/handling_dataview.dart';

import '../../../controller/address/add_address_controller.dart';
import '../../../shared/styles/colors.dart';

class AddressAdd extends StatelessWidget {
  const AddressAdd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    AddAddressController controllerPage=Get.put(AddAddressController());
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            "Add Details Address",
            style: TextStyle(color: AppColor.gray, fontSize: 20),
          )),

      body: Container(
        child: GetBuilder<AddAddressController>(
            builder: (controllerPage) {
              return HandlingDataView(
                statusRequest: controllerPage.statusRequest,
                widget:
                Column(
                  children: [
                    // ignore: unnecessary_null_comparison


                                  ],
                ),
              );
            }
        ),
      ),

    );
  }
}


// AIzaSyBjUkDs59q6R2-3Q3cLqt_sYHsZ6OMsX7U
