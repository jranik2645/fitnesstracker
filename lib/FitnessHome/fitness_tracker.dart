import 'package:fitness_tracker_app/FitnessHome/FitnessTracker/fitnesssTracker.dart';
import 'package:fitness_tracker_app/utils/colors.dart';
import 'package:fitness_tracker_app/utils/styletext.dart';
import 'package:fitness_tracker_app/widgets/custom_item.dart';
import 'package:fitness_tracker_app/widgets/custom_item_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';

class FitnessHome extends StatelessWidget {
  const FitnessHome({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: const CustomCircleButton(icon: Icons.menu),
          actions: [
            const CustomCircleButton(icon: Icons.notifications),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              headingTwo(data: 'Make Your'),
              headingTwo(data: 'Body Perfect', textColor: AppColor.PriamyColor),
              const SizedBox(
                height: 10,
              ),
              Stack(
                alignment: Alignment.centerRight,
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: size.width,
                    height: size.height * .25,
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: AppColor.PriamyColor,
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        headingThree(
                          data: 'Full Body\n Exercise X3',
                          textColor: Colors.black,
                        ),
                        const CustomItem(
                          icon: Icons.local_fire_department_outlined,
                          text: '1230 kCal',
                        ),
                        const CustomItem(
                          icon: Icons.access_time_rounded,
                          text: '50 min',
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFB9CF30)),
                            onPressed: () {
                               Navigator.push(context, MaterialPageRoute(builder: (context)=>const FitnessTracker()));
                            },
                            child: const Text(
                              'Start Now',
                              style: TextStyle(color: Colors.black),
                            ))
                      ],
                    ),
                  ),
                  Positioned(
                    right: -30,
                    child: Image.asset(
                      'asset/images/man2.png',
                      fit: BoxFit.cover,
                      height: 400,
                      width: 250,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 60,
              ),
               const Row(
                children: [
                  Expanded(
                    child: CustomItemCard(
                      title: 'Running\n Distance',
                      value: '1.8 km',
                      icon: Icons.directions_run,
                    ),
                  ),
                    SizedBox(width: 10,),
                  Expanded(
                    child: CustomItemCard(
                      title: 'Total\n Cycling',
                      value: '7.8 km',
                      icon: Icons.directions_bike,
                      isDark:true,

                    ),
                  ),
                ],
              ),
               SizedBox(height: 30,),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                   decoration: BoxDecoration(
                       color: AppColor.SecondaryColor,
                       borderRadius: BorderRadius.circular(40),
                   ),
                    child: ListTile(
                       contentPadding: EdgeInsets.only(left: 15),
                       title: headingThree(data: 'Appointment'),
                        subtitle: bodyLarge(data: 'For a exercise practice'),
                        trailing: CustomCircleButton(icon: Icons.call,
                           backgroundColor:AppColor.PriamyColor,
                            iconColor: Colors.black,

                        ),
                    ),
                )
            ],
          ),
        ));
  }
}
