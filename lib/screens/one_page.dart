import 'package:ecommerce_ui/model/Catogoreies.dart';
import 'package:ecommerce_ui/model/routes.dart';
import 'package:ecommerce_ui/model/selling.dart';
import 'package:ecommerce_ui/provider/MyAppProvider.dart';
import 'package:ecommerce_ui/screens/two_page.dart';
import 'package:ecommerce_ui/widgets/custom_categories.dart';
import 'package:ecommerce_ui/widgets/custom_selling.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class onePage extends StatelessWidget {
    const onePage({super.key});

   @override
  Widget build(BuildContext context) {
  final provider= Provider.of<MyAppProivder>(context);
    return Scaffold(

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 16.0),
          child: ListView(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      prefixIcon: Icon(Icons.search,color: Colors.black,),
                      fillColor: Colors.grey.withOpacity(0.2),
                      filled: true,
                      border: InputBorder.none,

                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Icon(Icons.menu,size: 30,),
              ],
            ),
            SizedBox(height: 20,),
            Text('Categories',style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),),

            Container(
             height: 120,

              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                  itemBuilder:(context,index) =>CustomCategories(
                      title: CatrgoriesList[index].title, icon: CatrgoriesList[index].icon),
                  separatorBuilder:(context,index)=>SizedBox(width: 10,) ,
               itemCount:CatrgoriesList.length),
            ),
             SizedBox(height: 20,),
            Text('Best Selling',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),),

           GridView.builder(
             itemBuilder:(context,index)=>GestureDetector(
                 onTap: (){
                   provider.item=index;
                   provider.sellingList;
                   Navigator.pushNamed(context, RouteName.twoPage);
                 },
                 child: CustomSelling(title: sellingList[index].title, image: sellingList[index].image, price: sellingList[index].price)) ,
             itemCount: sellingList.length,
             physics: NeverScrollableScrollPhysics(),
             shrinkWrap: true,
             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
             crossAxisCount: 2,
             mainAxisExtent: 310,
             mainAxisSpacing: 10.0,
               crossAxisSpacing: 10.0,

           ),),




           ],),
        ),
      ),

    );
  }
}
