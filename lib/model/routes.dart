
import 'package:ecommerce_ui/model/selling.dart';
import 'package:ecommerce_ui/screens/cart.dart';
import 'package:ecommerce_ui/screens/one_page.dart';
import 'package:ecommerce_ui/screens/two_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RouteManager{
static  Map<String, WidgetBuilder> routes=
 {
  RouteName.onePage:(contaxt)=>onePage(),
  RouteName.twoPage:(contaxt)=> TwoPage(),
  RouteName.cart:(contaxt)=> Cart(),


 };



}

class RouteName{
 static const String onePage="onePage";
 static const String twoPage="twoPage";
 static const String cart="Cart";

}