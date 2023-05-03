import 'package:flutter/material.dart';

import '../../shared/data/remote/status_request.dart';

class HandlingDataView extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDataView(
      {Key? key, required this.statusRequest, required this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ?   const Center(child:CircularProgressIndicator())
        : statusRequest == StatusRequest.offlineFailed
        ? const Center(child: Text("Internet connection failed"))
        : statusRequest == StatusRequest.serverFailed
        ?const Center(child: Text("The server cannot be reached"))
        : statusRequest == StatusRequest.failure
        ? const Center(child:Text("There is no data to display") )
        : widget;
  }
}