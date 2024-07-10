import 'package:ecommerce_ui/model/Catogoreies.dart';
import 'package:ecommerce_ui/model/routes.dart';
import 'package:ecommerce_ui/model/selling.dart';
import 'package:ecommerce_ui/screens/one_page.dart';
import 'package:ecommerce_ui/screens/two_page.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {

  Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Widget> pageKind =[ onePage(),  TwoPage(),];

int value =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: (){
                    value=0;
                   setState(() {

                   });

                  },
                  child: Icon(Icons.home_filled)),label: ""),
          BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: (){
                    value=1;
                    setState(() {

                    });

                  },
                  child: Icon(Icons.card_giftcard)),label: ""),

        ],
      ),
      body: pageKind[value],

    );
  }
}
