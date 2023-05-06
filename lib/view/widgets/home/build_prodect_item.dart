import 'package:flutter/material.dart';

import '../../../shared/styles/colors.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.all(0),
      

      childAspectRatio: 0.68,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        Card(
          elevation: 5,
          margin: const EdgeInsets.all(0),
          color: AppColor.gray3,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: const BorderSide(
                color: AppColor.gray1,

              )

          ),

          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(

                  children: [
                    const Image(image: AssetImage("assets/images/redme.png"),height: 140,width: double.infinity,),

                    Container(

                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      color: Colors.red,
                      child: const Text("DISCOUNT",
                        style: TextStyle(fontSize: 10,color: AppColor.white),
                      ),
                    ),
                  ],
                  alignment: AlignmentDirectional.bottomStart,
                ),
                const SizedBox(height: 20,),
                const Text("SAMSUNG Galaxy S22 Ultra Cell Phone, Factory Unlocked Android Smartphone, 512GB, 8K Camera & Video, Brightest Display Screen, S Pen, Long Battery Life, Fast 4nm Processor, US Version, Green",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextStyle(color: AppColor.black,height: 1.3,fontSize: 14),



                ),
                Row(
                  children:  [
                    const Text("500 EGP",
                      style: TextStyle(color: AppColor.defaultColor,fontSize: 12),

                    ),
                    const SizedBox(width: 5,),
                    const Text("500 EGP",
                      style: TextStyle(fontSize: 10,decoration: TextDecoration.lineThrough),

                    ),
                    const Spacer(),
                    IconButton(
                      padding: EdgeInsets.zero,
                        onPressed: (){}, icon: const CircleAvatar(
                      radius: 15,
                        backgroundColor: AppColor.gray,
                        child: Icon(Icons.favorite_border,size: 18,color: AppColor.white,)))
                  ],
                ),

              ],
            ),
          ),

        ),
        Card(
          elevation: 5,
          margin: const EdgeInsets.all(0),
          color: AppColor.gray3,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: const BorderSide(
                color: AppColor.gray1,

              )

          ),

          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(

                  children: [
                    const Image(image: AssetImage("assets/images/phone.png"),height: 140,width: double.infinity,),

                    Container(

                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      color: Colors.red,
                      child: const Text("DISCOUNT",
                        style: TextStyle(fontSize: 10,color: AppColor.white),
                      ),
                    ),
                  ],
                  alignment: AlignmentDirectional.bottomStart,
                ),
                const SizedBox(height: 20,),
                const Text("SAMSUNG Galaxy S22 Ultra Cell Phone, Factory Unlocked Android Smartphone, 512GB, 8K Camera & Video, Brightest Display Screen, S Pen, Long Battery Life, Fast 4nm Processor, US Version, Green",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextStyle(color: AppColor.black,height: 1.3,fontSize: 14),



                ),
                Row(
                  children:  [
                    const Text("500 EGP",
                      style: TextStyle(color: AppColor.defaultColor,fontSize: 12),

                    ),
                    const SizedBox(width: 5,),
                    const Text("500 EGP",
                      style: TextStyle(fontSize: 10,decoration: TextDecoration.lineThrough),

                    ),
                    const Spacer(),
                    IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: (){}, icon: const CircleAvatar(
                        radius: 15,
                        backgroundColor: AppColor.gray,
                        child: Icon(Icons.favorite_border,size: 18,color: AppColor.white,)))
                  ],
                ),

              ],
            ),
          ),

        ),
        Card(
          elevation: 5,
          margin: const EdgeInsets.all(0),
          color: AppColor.gray3,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: const BorderSide(
                color: AppColor.gray1,

              )

          ),

          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(

                  children: [
                    const Image(image: AssetImage("assets/images/redme.png"),height: 140,width: double.infinity,),

                    Container(

                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      color: Colors.red,
                      child: const Text("DISCOUNT",
                        style: TextStyle(fontSize: 10,color: AppColor.white),
                      ),
                    ),
                  ],
                  alignment: AlignmentDirectional.bottomStart,
                ),
                const SizedBox(height: 20,),
                const Text("SAMSUNG Galaxy S22 Ultra Cell Phone, Factory Unlocked Android Smartphone, 512GB, 8K Camera & Video, Brightest Display Screen, S Pen, Long Battery Life, Fast 4nm Processor, US Version, Green",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextStyle(color: AppColor.black,height: 1.3,fontSize: 14),



                ),
                Row(
                  children:  [
                    const Text("500 EGP",
                      style: TextStyle(color: AppColor.defaultColor,fontSize: 12),

                    ),
                    const SizedBox(width: 5,),
                    const Text("500 EGP",
                      style: TextStyle(fontSize: 10,decoration: TextDecoration.lineThrough),

                    ),
                    const Spacer(),
                    IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: (){}, icon: const CircleAvatar(
                        radius: 15,
                        backgroundColor: AppColor.gray,
                        child: Icon(Icons.favorite_border,size: 18,color: AppColor.white,)))
                  ],
                ),

              ],
            ),
          ),

        ),
        Card(
          elevation: 5,
          margin: const EdgeInsets.all(0),
          color: AppColor.gray3,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: const BorderSide(
                color: AppColor.gray1,

              )

          ),

          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(

                  children: [
                    const Image(image: AssetImage("assets/images/phone.png"),height: 140,width: double.infinity,),

                    Container(

                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      color: Colors.red,
                      child: const Text("DISCOUNT",
                        style: TextStyle(fontSize: 10,color: AppColor.white),
                      ),
                    ),
                  ],
                  alignment: AlignmentDirectional.bottomStart,
                ),
                const SizedBox(height: 20,),
                const Text("SAMSUNG Galaxy S22 Ultra Cell Phone, Factory Unlocked Android Smartphone, 512GB, 8K Camera & Video, Brightest Display Screen, S Pen, Long Battery Life, Fast 4nm Processor, US Version, Green",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextStyle(color: AppColor.black,height: 1.3,fontSize: 14),



                ),
                Row(
                  children:  [
                    const Text("500 EGP",
                      style: TextStyle(color: AppColor.defaultColor,fontSize: 12),

                    ),
                    const SizedBox(width: 5,),
                    const Text("500 EGP",
                      style: TextStyle(fontSize: 10,decoration: TextDecoration.lineThrough),

                    ),
                    const Spacer(),
                    IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: (){}, icon: const CircleAvatar(
                        radius: 15,
                        backgroundColor: AppColor.gray,
                        child: Icon(Icons.favorite_border,size: 18,color: AppColor.white,)))
                  ],
                ),

              ],
            ),
          ),

        ),





      ],


    );
  }
}
