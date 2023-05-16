import 'package:flutter/material.dart';

import '../../../shared/styles/colors.dart';

Row customBar({
  required BuildContext context,
  required String hintText,
  required Function(String value) onChanged,
  required Function() onIconSearch,



}) {
  return Row(
    children: [
      Expanded(
        child: TextFormField(
          onChanged: onChanged,

          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(10),
            prefixIcon:  IconButton(
              icon: Icon(Icons.search,size:MediaQuery.of(context).size.width * 0.06, ),
              onPressed: onIconSearch,

            ),
            hintText: hintText,
            hintStyle: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10),
            ),
            filled: true,
            fillColor: AppColor.gray2,
          ),
        ),
      ),
      const SizedBox(width: 10),
      Container(
        decoration: BoxDecoration(
          color: AppColor.gray2,
          borderRadius: BorderRadius.circular(10),
        ),
        width: MediaQuery.of(context).size.width * 0.14,
        // height:MediaQuery.of(context).size.height /13,
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: IconButton(
          onPressed: () {},
          icon:  Icon(
            Icons.notifications_active_outlined,
            size:  MediaQuery.of(context).size.width * 0.06,
            color: Colors.grey,
          ),
        ),
      ),
    ],
  );
}