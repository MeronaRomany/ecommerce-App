import 'package:flutter/material.dart';

class CustomSelling extends StatelessWidget {
  final String image;
  final String title;
  final String price;

  const CustomSelling({super.key,required this.title,required this.image,required this.price});

  @override
  Widget build(BuildContext context) {
    return Card(

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Image.asset(image,
        fit: BoxFit.cover,
          // height: 200,
          // width:double.infinity,
        ),

           Text(title,style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
          ),),
        Text(price,style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.orange,
        ),),
      ],),
    ) ;
  }
}
