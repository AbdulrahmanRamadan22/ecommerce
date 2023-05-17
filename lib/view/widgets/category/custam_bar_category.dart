import 'package:flutter/material.dart';

import '../../../shared/styles/colors.dart';

Widget customBarCategory(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: TextFormField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(10),
        prefixIcon: const Icon(Icons.search),
        hintText: "Find Category",
        hintStyle: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        filled: true,
        fillColor: AppColor.gray2,
      ),
    ),
  );
}