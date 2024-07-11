import 'package:ecommerce_ui/model/selling.dart';
import 'package:flutter/cupertino.dart';

class CartProvider with ChangeNotifier{
 List<Selling> ProudactList=[];
 double priceTotal=0.0;
 void add(Selling item){
   ProudactList.add(item);
   priceTotal += item.price ;
   notifyListeners();
 }

 void remove(Selling item){
   ProudactList.remove(item);
   priceTotal -= item.price ;
   notifyListeners();
 }
 int get count=>ProudactList.length;
 List<Selling> get displayItems=>ProudactList;



}