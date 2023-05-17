import 'package:flutter/material.dart';

import '../../shared/styles/colors.dart';
import '../widgets/favorite/build_list_product_favorite.dart';
import '../widgets/shared/my_divider.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        AppBar(title: const Text("Favorites Products",style: TextStyle(color: AppColor.gray)),),
        Expanded(
          child: ListView.separated(
              itemBuilder: (context, index) => buildListProduct(),
              separatorBuilder: (context, index) =>  myDivider(),
              itemCount: 5),
        ),
      ],
    );
  }
}
