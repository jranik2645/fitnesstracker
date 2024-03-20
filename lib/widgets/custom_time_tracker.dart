
import 'package:fitness_tracker_app/utils/styletext.dart';
import 'package:flutter/material.dart';

class CustomTimeTracker extends StatelessWidget {
    final bool? isFilled;
    final String time;
  const CustomTimeTracker({super.key,  this.isFilled, required this.time});

  @override
  Widget build(BuildContext context) {
    return   Column(
      children: [
        Container(
          height: 8,
          decoration: BoxDecoration(
            color:isFilled ==true ? Colors.black :Colors.black.withOpacity(.2),
            borderRadius: BorderRadius.circular(40),
          ),
        ),
        SizedBox(height: 10,),
        bodyLarge(data: time, textColor: Colors.black)
      ],
    );
  }
}
