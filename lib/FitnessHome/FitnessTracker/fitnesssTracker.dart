import 'package:fitness_tracker_app/FitnessHome/FitnessTracker/widgets/custom_tracker_chart.dart';
import 'package:fitness_tracker_app/utils/colors.dart';
import 'package:fitness_tracker_app/utils/styletext.dart';
import 'package:fitness_tracker_app/widgets/Custom_health_item.dart';
import 'package:fitness_tracker_app/widgets/custom_item.dart';
import 'package:fitness_tracker_app/widgets/custom_item_card.dart';
import 'package:fitness_tracker_app/widgets/custom_time_tracker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../widgets/custom_button.dart';


class FitnessTracker extends StatelessWidget {
  const FitnessTracker({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: const CustomCircleButton(icon: Icons.arrow_back_ios_new),
          actions: [
            const CustomCircleButton(icon: Icons.notifications),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                headingTwo(data: 'Health'),
                headingTwo(data: 'Overview', textColor: AppColor.PriamyColor),
                 SizedBox(height: 20,),
                  Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       CustomHealthItem(title: 'Calories', subtitle: '1360 kCal'),

                       CustomHealthItem(title: 'Protein', subtitle: '30 Gram')
                     ],
                  ),
                 SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomHealthItem(title: 'Sleep', subtitle: '3 hours'),

                    CustomHealthItem(title: 'Weight', subtitle: '67 KG')
                  ],
                ),
                    SizedBox(height: 15,),
                  Container(
                     width: size.width,
                     padding: EdgeInsets.all(15),
                     decoration: BoxDecoration(
                        color: AppColor.PriamyColor,
                        borderRadius: BorderRadius.circular(25),
                     ),
                     child: Column(
                        children: [
                           ListTile(
                               leading: CustomCircleButton(
                                  icon: Icons.heart_broken,
                                 backgroundColor: Colors.black.withOpacity(0.1),
                                 iconColor: Colors.black,
                               ),
                              title: headingTwo(data: '851 ms', textColor: Colors.black),
                             subtitle: bodyLarge(data: 'R-R interval'),
                              textColor: Colors.black.withOpacity(0.5),
                           ),
                          SizedBox(
                             height: 20,
                          ),
                           const Row(
                              children: [
                                 Expanded(
                                   child:CustomTimeTracker(time: '850 ms',
                                    isFilled: true,
                                   )
                                 ),
                                 SizedBox(width: 10,),
                                Expanded(
                                    child:CustomTimeTracker(time: '830 ms', )
                                ),
                                SizedBox(width: 10,),
                                Expanded(
                                    child:CustomTimeTracker(time: '810 ms', )
                                ),
                              ],
                           ),
                        ],
                     ),
                  ),
                   SizedBox( height: 20,),
                 Container(
                    width: size.width,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                       border: Border.all(color: AppColor.PriamyColor,),

                       borderRadius: BorderRadius.circular(25),
                    ),
                    child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         headingThree(data: 'Blood Pressure'),
                          SizedBox(
                             height: 10,
                          ),
                        const   CustomTrackerchart(),
                       ],
                    ),
                 )


              ],
            ),
          ),
        ));
  }
}
