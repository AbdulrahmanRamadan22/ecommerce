import 'package:flutter/material.dart';

import '../../shared/styles/colors.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.all(0),
      

      childAspectRatio: 0.75,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        Card(
          elevation: 5,
          margin: EdgeInsets.all(0),
          color: AppColor.gray3,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(
                color: AppColor.gray1,

              )

          ),

          child: Column(
            children: [

            ],
          ),

        ),
        Card(
          elevation: 5,
          margin: EdgeInsets.all(0),
          color: AppColor.gray3,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(
                color: AppColor.gray1,

              )

          ),

          child: Column(
            children: [

            ],
          ),

        ),
        Card(
          elevation: 5,
          margin: EdgeInsets.all(0),
          color: AppColor.gray3,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(
                color: AppColor.gray1,

              )

          ),

          child: Column(
            children: [

            ],
          ),

        ),

        Card(
          elevation: 5,
          margin: EdgeInsets.all(0),
          color: AppColor.gray3,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(
                  color: AppColor.gray1,

              )

          ),

          child: Column(
            children: [

            ],
          ),

        ),





      ],


    );
  }
}
