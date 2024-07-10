

import 'package:ecommerce_ui/provider/MyAppProvider.dart';
import 'package:ecommerce_ui/provider/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'App/MyAPP.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MultiProvider(
    providers: [
    ChangeNotifierProvider(
        create: (context) => MyAppProivder(),),
      ChangeNotifierProvider(
        create: (context) => CartProvider(),),

    ]

        ,child: const MyApp()
    ),

  );
}

