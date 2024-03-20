import 'package:fitness_tracker_app/utils/colors.dart';
import 'package:flutter/material.dart';

Widget headingTwo({
       required String data,
     Color? textColor,
     FontWeight ? fontWeight,

}) {
     return Text(
        data,
        style: TextStyle(
          color: textColor ?? AppColor.whiteColor,
            fontSize: 30,
           fontWeight:  fontWeight ?? FontWeight.w600,
     ),
     );
}
Widget headingThree({
  required String data,
  Color? textColor,
  FontWeight ? fontWeight,

}) {
  return Text(
    data,
    style: TextStyle(
      color: textColor ?? AppColor.whiteColor,
      fontSize: 25,
      fontWeight:  fontWeight ?? FontWeight.w600,
    ),
  );
}
Widget bodyLarge({
  required String data,
  Color? textColor,
  FontWeight ? fontWeight,

}) {
  return Text(
    data,
    style: TextStyle(
      color: textColor ?? AppColor.whiteColor,
      fontSize: 18,
      fontWeight:  fontWeight ?? FontWeight.w600,
    ),
  );
}