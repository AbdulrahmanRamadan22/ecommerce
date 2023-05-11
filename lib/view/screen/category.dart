import 'package:flutter/material.dart';
import 'package:store_app_advanced/shared/styles/colors.dart';

import '../widgets/custam_bar_category.dart';
import '../widgets/my_divider.dart';
import '../widgets/responsive.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        customBarCategory(context),
        Expanded(
          child: ListView.separated(
            itemBuilder: (context, index) => buildCatItem(),
            separatorBuilder: (context, index) => myDivider(),
            itemCount: 10,
          ),
        ),
      ],
    );
  }
}

// Widget buildCatItem() => SizedBox(
//   height: 120,
//   width: double.infinity,
//   child:   Center(
//     child: ListTile(
//
//      contentPadding: EdgeInsets.zero,
//
//       enabled: true,
//
//
//
//       leading: Container(
//
//         // height: 100,
//
//         child: Image.asset(
//
//           'assets/images/redme.png',
//           height: 100,
//           width: 100,
//
//
//
//         ),
//       ),
//
//       title: Text(
//
//         'Phones',
//
//         style: TextStyle(
//
//           fontSize: 20.0,
//
//           fontWeight: FontWeight.bold,
//
//         ),
//
//       ),
//
//       trailing: Icon(Icons.arrow_forward_ios),
//
//     ),
//   ),
// );


Widget buildCatItem() => Padding(
  padding: const EdgeInsets.all(16.0),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Row(
        children: const [
          // Use a Flexible widget to allow the image to resize
          Flexible(
            flex: 1,
            child: Image(
              image: AssetImage("assets/images/redme.png"),
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(width: 20.0),
          // Use an Expanded widget to allow the text to fill the remaining space
          Expanded(
            flex: 3,

            child: Responsive(
              smallScreen: Text(
                maxLines: 2,
                "Phons",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: AppColor.black,
                ),
              ),
              mediumScreen: Text(
                maxLines: 2,
                "Phons",
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: AppColor.black,
                ),
              ),
              largeScreen: Text(
                maxLines: 2,
                "Phons",
                style: TextStyle(
                  fontSize: 100.0,
                  color: AppColor.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          // Use a Responsive widget to adjust the size of the arrow icon
          Responsive(
            smallScreen: Icon(Icons.arrow_forward_ios, size: 24.0),
            mediumScreen: Icon(Icons.arrow_forward_ios, size: 40.0),
            largeScreen: Icon(Icons.arrow_forward_ios, size: 100.0),
          ),
        ],
      ),
    ],
  ),
);