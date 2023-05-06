
import 'package:flutter/material.dart';

import '../widgets/home/banner.dart';
import '../widgets/home/build_category.dart';
import '../widgets/home/build_prodect_item.dart';
import '../widgets/home/custom _bar.dart';
import '../widgets/home/title_home.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      // appBar: AppBar(
      //   toolbarHeight: 0,
      // ),
      Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                CustomBar(),
                bannerCard(),
                titleHome("Category"),
                SizedBox(
                  height: 100,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                        itemBuilder:(context, index) =>  buildCategoryItem(),
                        separatorBuilder: (context, index) => const SizedBox(width: 10),
                        itemCount: 10),
                ),
                titleHome("Products"),
                //
                const ProductItem(),


              ],
            ),
          ));


  }
}
