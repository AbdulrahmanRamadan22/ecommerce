import 'package:flutter/material.dart';

import '../../models/on_boarding_model.dart';
import '../../shared/constants/image_assets.dart';
import '../../shared/styles/colors.dart';
import '../../shared/widgets/default_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


// ignore: must_be_immutable
class OnBoardingScreen extends StatelessWidget {
   OnBoardingScreen({Key? key}) : super(key: key);

  List<OnBoardingModel> onBoardingList = [
    OnBoardingModel(
        title: "Choose Product",
        body:
        "We Have a 100k Product , Choose \n Your Product From  Our \n E-commerce Shop",
        image: AppImageAsset.onBoardingImageOne),
    OnBoardingModel(
        title: "Easy And Safe Payment",
        body:
        "Easy Checkout & Safe Payment method.\n Trusted by our Customers from \n all over the world.",

        image: AppImageAsset.onBoardingImageTwo),
    OnBoardingModel(
        title: "Track Your Order",
        body:
        "Best Tracker has been Used For \n Track your order. You'll know where \n your product is at the moment.",
        image: AppImageAsset.onBoardingImageThree),
    OnBoardingModel(
        title: "Fast Delivery",
        body:
        "Reliable And Fast Delivery. We \n Deliver your product the fastest \n way possible.",

        image: AppImageAsset.onBoardingImageFour),
  ];

  var boardingController=PageController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: PageView.builder(
              controller: boardingController,
              physics: const BouncingScrollPhysics(),

              itemBuilder:(context, index) => buildBoardingItem(onBoardingList[index]),
              itemCount: onBoardingList.length,


            ),
          ),

          Expanded(
            flex: 2,
            child: Column(
              children: [
                SmoothPageIndicator(
                  effect: ExpandingDotsEffect(
                    activeDotColor: AppColor.defaultColor,
                    dotColor: AppColor.gray1,
                    dotHeight: 10,
                    expansionFactor: 4,
                    dotWidth: 10,
                    spacing: 5.0,


                  ),
                    controller: boardingController,
                    count: onBoardingList.length),

                Spacer(),
                defaultButton(
                  text: "Continue",
                  onPressed: (){
                    boardingController.nextPage(
                        duration: Duration(
                          milliseconds: 750,
                        ),
                        curve: Curves.fastLinearToSlowEaseIn);
                  },
                  width: 300,
                  radius: 8.0,

                ),
                TextButton(
                    onPressed: (){
                      boardingController.nextPage(
                          duration: Duration(
                            milliseconds: 750,
                          ),
                          curve: Curves.fastLinearToSlowEaseIn);
                    },
                    child: const Text("Skip",style: TextStyle(fontSize: 20,fontFamily: "Jannah",color: AppColor.black),)),
                SizedBox(height: 10,),
              ],
            ),
          ),
        ],
      ),

    );
  }

  Widget buildBoardingItem(OnBoardingModel onBoarding)=>Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
       Text("${onBoarding.title}",style: const TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.w700,
        color: AppColor.black,
        fontFamily: 'Jannah',
      ),),

      const SizedBox(height: 60,),
       Image(image: AssetImage("${onBoarding.image}"),width: 200,height: 220,fit: BoxFit.fill),
      const SizedBox(height: 40,),
      Container(
        width: double.infinity,
        alignment: Alignment.center,
        child:  Text(
          "${onBoarding.body}",
           textAlign: TextAlign.center,

        ),
      ),



    ],
  );
}

