import 'package:ecommerce_ui/model/Catogoreies.dart';
import 'package:ecommerce_ui/model/routes.dart';
import 'package:ecommerce_ui/model/selling.dart';
import 'package:ecommerce_ui/provider/MyAppProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TwoPage extends StatelessWidget {

   TwoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider= Provider.of<MyAppProivder>(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.card_giftcard_outlined,),
                title: Text("Detailes proudact",textAlign: TextAlign.center,),
                trailing: GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, RouteName.cart);
                    },
                    child: Icon(Icons.shopping_cart,)),
                textColor: Colors.orange,
                iconColor: Colors.black,
                titleTextStyle: TextStyle( fontWeight: FontWeight.bold,
                  fontSize: 20,
                  wordSpacing: 0.11,
                ),
               titleAlignment: ListTileTitleAlignment.center,

              ),

              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(sellingList[provider.item].image,
                      height: 250.0,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),

                    Text( sellingList[provider.item].title
                    ,style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),),

                    Text(sellingList[provider.item].price ,style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.orange,
                    ),),

                    Container(
                      height: 50,
                      width: 200,
                      color: Colors.black,
                      child:  Center(
                        child: TextButton(onPressed: (){},
                          child: Text('Add to Cart', style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.white,
                        ),),) ,


                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),




          ),
        ),
      );

  }
}
