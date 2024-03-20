
import 'package:fitness_tracker_app/utils/colors.dart';
import 'package:fitness_tracker_app/utils/styletext.dart';
import 'package:flutter/material.dart';

class CustomHealthItem extends StatelessWidget {
   final String title;
   final String subtitle;

  const CustomHealthItem({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
        Container(
          height: 10,
          width: 10,
          decoration: BoxDecoration(
            color: AppColor.PriamyColor,
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(width: 10,),
        Column(
          children: [
            headingThree(data: title),
            bodyLarge(data: subtitle,

                textColor: AppColor.whiteColor.withOpacity(0.1)
            ),

          ],
        ),

      ],
    );
  }
}
