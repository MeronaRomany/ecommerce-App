import 'package:ecommerce_ui/model/routes.dart';
import 'package:ecommerce_ui/screens/home_page.dart';
import 'package:ecommerce_ui/screens/one_page.dart';
import 'package:ecommerce_ui/screens/two_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Homepage(),
      routes: RouteManager.routes,

    ) ;
  }
}



