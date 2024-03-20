
import 'package:flutter/material.dart';

class CustomItem extends StatelessWidget {
   final IconData icon;
   final String text;
  const CustomItem({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
       children: [
           Icon(icon, color: Colors.black.withOpacity(.5),),
             SizedBox(
                width: 5,
             ),
           Text(
              text,
              style: TextStyle(color: Colors.black.withOpacity(.5)),
           ),
       ],
    );
  }
}
