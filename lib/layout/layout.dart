
import 'package:flutter/material.dart';


import '../view/widgets/banner.dart';
import '../view/widgets/build_category.dart';
import '../view/widgets/build_prodect_item.dart';
import '../view/widgets/custom _bar.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body:  Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                CustomBar(),
                bannerCard(),
                const Text("Category",style: TextStyle(fontSize: 24)),
                const SizedBox(height: 10,),
                SizedBox(
                  height: 100,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                        itemBuilder:(context, index) =>  buildCategoryItem(),
                        separatorBuilder: (context, index) => const SizedBox(width: 10),
                        itemCount: 10),
                ),
                const SizedBox(height: 10,),
                const Text("Products",style: TextStyle(fontSize: 24)),
                const SizedBox(height: 10,),

                const ProductItem(),


              ],
            ),
          )),

    );
  }
}
