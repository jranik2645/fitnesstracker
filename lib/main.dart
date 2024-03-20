import 'package:fitness_tracker_app/utils/colors.dart';
import 'package:flutter/material.dart';

import 'FitnessHome/fitness_tracker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,

      title: 'Flutter Demo',
      theme: ThemeData(
             scaffoldBackgroundColor: AppColor.backgroundColor,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  FitnessHome(),
    );
  }
}

