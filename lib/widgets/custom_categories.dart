import 'package:flutter/material.dart';

class CustomCategories extends StatelessWidget {
  final IconData icon;
  final String title;
  const CustomCategories({super.key,required this.icon,required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80,
          width: 90,
          child: Icon(icon,size: 40,),
          decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(40)
          ),
        ),
        SizedBox(height: 10,),
        Text(title,style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),),
      ],
    ) ;
  }
}
