import 'package:flutter/material.dart';
import '../widgets/product/list_category_item.dart';
import '../widgets/shared/custom _bar.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            customBar
              (context: context,
                hintText:"Find Product" ,
                onChanged: (String value) {  },
                onIconSearch: () {  }),

            const ListCategoryItems(),
          ],
        ),
      ),
    );
  }
}
