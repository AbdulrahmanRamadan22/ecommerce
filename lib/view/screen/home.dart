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
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              customBar(context),
              bannerCard(),
              titleHome("Category", context),
              SizedBox(
                height: MediaQuery.of(context).size.height / 8,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => buildCategoryItem(context),
                  separatorBuilder: (context, index) => const SizedBox(width: 10),
                  itemCount: 10,
                ),
              ),
              titleHome("Products", context),
              LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  const crossAxisCount = 2;
                  final childAspectRatio =
                      constraints.maxWidth / (crossAxisCount * 300);
                  return GridView.builder(
                    shrinkWrap: true,
                    // padding: const EdgeInsets.all(10),
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                    SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: crossAxisCount,
                      childAspectRatio: childAspectRatio,
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 5,
                    ),
                    itemCount: 4, // Replace with the actual number of items
                    itemBuilder: (BuildContext context, int index) {
                      return const ProductItem();
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}