
import 'package:ecommerce_ui/model/selling.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../screens/one_page.dart';
class MyAppProivder with ChangeNotifier{

  int item=0;

  List <Selling> sellingList=[
    Selling("smart",'assets/images/41Mu-OczK0L._AC_UL400_.jpg' ,350 ),
    Selling("Logitech G 231",'assets/images/41Mu-OczK0L._AC_UL400_.jpg' ,359 ),
    Selling("Laptop",'assets/images/download.jpg' ,150 ),
    Selling('Apple Watch','assets/images/HQWW2.jpg' ,400 ),
    Selling('Mobile Android','assets/images/images.jpg' , 100),
    Selling('Mobile Android','assets/images/images.jpg' , 100),

  ];

  notifyListener() {
    // TODO: implement notifyListener
    throw UnimplementedError();
  }





}