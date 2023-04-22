import 'package:flutter/material.dart';
import 'package:store_app_advanced/shared/widgets/navigate_and_finish.dart';

import '../../models/on_boarding_model.dart';
import '../../shared/constants/image_assets.dart';
import '../../shared/styles/colors.dart';
import '../../shared/widgets/default_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../shared/widgets/navigate_to_screen.dart';
import '../login/login_screen.dart';


// ignore: must_be_immutable
class OnBoardingScreen extends StatefulWidget {
   OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
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

  bool isLast=false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: PageView.builder(
              onPageChanged: (index) {
                if(index == onBoardingList.length - 1)
                  {
                    setState(() {
                      isLast=true;
                    });
                  }
                else{
                  setState(() {
                    isLast=false;
                  });
                }

              },
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
                  effect: const ExpandingDotsEffect(
                    activeDotColor: AppColor.defaultColor,
                    dotColor: AppColor.gray1,
                    dotHeight: 10,
                    expansionFactor: 4,
                    dotWidth: 10,
                    spacing: 5.0,


                  ),
                    controller: boardingController,
                    count: onBoardingList.length),

                const Spacer(),
                defaultButton(
                  text: "Continue",
                  onPressed: (){

                    if(isLast){
                      navigateAndFinish(context, LoginScreen());
                    }
                    else{
                      boardingController.nextPage(
                          duration: const Duration(
                            milliseconds: 750,
                          ),
                          curve: Curves.fastLinearToSlowEaseIn);
                    }

                  },
                  width: 300,


                ),
                TextButton(
                    onPressed: (){

                      navigateAndFinish(context,LoginScreen());

                    },
                    child: const Text("Skip",style: TextStyle(fontSize: 20,fontFamily: "Jannah",color: AppColor.black),)),
                const SizedBox(height: 10,),
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

