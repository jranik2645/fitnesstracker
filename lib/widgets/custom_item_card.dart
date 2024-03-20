import 'package:fitness_tracker_app/utils/colors.dart';
import 'package:fitness_tracker_app/utils/styletext.dart';
import 'package:flutter/material.dart';

import 'custom_button.dart';

class CustomItemCard extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;

  final bool? isDark;

  const CustomItemCard(
      {super.key,
      required this.title,
      required this.value,
      required this.icon,
      this.isDark});

  @override
  Widget build(BuildContext context) {
    var thisIsDark = isDark == true;
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: thisIsDark ? AppColor.SecondaryColor : AppColor.PriamyColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: CustomCircleButton(
                backgroundColor: thisIsDark
                    ? AppColor.whiteColor.withOpacity(.1)
                    : Colors.black.withOpacity(.1),
                icon: icon,
                iconColor: thisIsDark ? AppColor.whiteColor :Colors.black,

            ),
          ),
          bodyLarge(
            data: title,
            textColor: thisIsDark ? AppColor.whiteColor : Colors.black,
          ),
          headingThree(
            data: value,
            textColor: thisIsDark ? AppColor.whiteColor : Colors.black,
          )
        ],
      ),
    );
  }
}
