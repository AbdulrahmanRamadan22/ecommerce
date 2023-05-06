import 'package:flutter/material.dart';

import '../../../shared/styles/colors.dart';

// ignore: non_constant_identifier_names
Widget CustomBar()=> Container(
  margin: const EdgeInsets.only(top: 20),

  child: Row(children: [
    Expanded(
        child: TextFormField(

          decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10),
              prefixIcon: Icon(Icons.search),
              hintText: "Find Product",
              hintStyle: const TextStyle(fontSize: 18),
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10)),
              filled: true,
              fillColor: AppColor.gray2),
        )),
    SizedBox(width: 10),
    Container(
      decoration: BoxDecoration(
          color:  AppColor.gray2,
          borderRadius: BorderRadius.circular(10)),
      width: 60,
      padding: EdgeInsets.symmetric(vertical: 2),
      child: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.notifications_active_outlined,
            size: 30,
            color: Colors.grey[600],
          )),
    )
  ]),
);