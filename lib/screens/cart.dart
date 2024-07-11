
import 'package:ecommerce_ui/model/selling.dart';
import 'package:ecommerce_ui/provider/MyAppProvider.dart';
import 'package:ecommerce_ui/provider/cart_provider.dart';
import 'package:ecommerce_ui/widgets/custom_selling.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    final cartProvider= Provider.of<CartProvider>(context);
    final provider= Provider.of<MyAppProivder>(context);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color:Colors.black),
          backgroundColor: Colors.grey[500],
          title: Text('Cart',style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),),
        ),
       bottomNavigationBar: Container(
         color:Colors.grey[500] ,
         height: 80,
         width: double.infinity,
         child: Padding(
           padding: const EdgeInsets.all(8.0),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text('Count total : ${cartProvider.count}',
               style: TextStyle(fontSize: 20,
               fontWeight: FontWeight.bold),),
               Text('Price total : ${cartProvider.priceTotal}',
                 style: TextStyle(fontSize: 20,
                     fontWeight: FontWeight.bold),),
             ],
           ),
         ),


      ),
        body:  GridView.builder(

          itemBuilder:(context,index)=>GestureDetector(
              onTap: (){
                cartProvider.remove(sellingList[index]);
              },
              child: CustomSelling(title:cartProvider.displayItems[index].title, image:cartProvider.displayItems[index].image , price: '${cartProvider.displayItems[index].price}')),
          itemCount: cartProvider.displayItems.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 310,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,

          ),
        ),


    ),
    );
  }
}
