import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../data/remote/status_request.dart';
import '../../../shared/constants/image_assets.dart';

class HandlingDataView extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDataView(
      {Key? key, required this.statusRequest, required this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ?   Center(child: Lottie.asset(AppImageAsset.loading , width: 250 , height: 250))
        : statusRequest == StatusRequest.offlineFailed
        ? Center(child: Lottie.asset(AppImageAsset.offLine , width: 250 , height: 250))
        : statusRequest == StatusRequest.serverFailed
        ?Center(child: Lottie.asset(AppImageAsset.serverError , width: 250 , height: 250))
        : statusRequest == StatusRequest.failure
        ? Center(child: Lottie.asset(AppImageAsset.noData , width: 250 , height: 250 , repeat: true  ))
        : widget;
  }
}

class HandlingDataRequest extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDataRequest(
      {Key? key, required this.statusRequest, required this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? Center(
        child: Lottie.asset(AppImageAsset.loading, width: 250, height: 250))
        : statusRequest == StatusRequest.offlineFailed
        ? Center(
        child: Lottie.asset(AppImageAsset.offLine,
            width: 250, height: 250))
        : statusRequest == StatusRequest.serverFailed
        ? Center(
        child: Lottie.asset(AppImageAsset.serverError,
            width: 250, height: 250))
        : statusRequest == StatusRequest.failure
        ? Center(
        child: Lottie.asset(AppImageAsset.noData,
            width: 250, height: 250))
        : widget;
  }
}