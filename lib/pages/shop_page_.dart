 import 'package:coffessss/coffee_tile.dart';
import 'package:coffessss/components/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/models/coffee.dart';

 class ShopPage extends StatefulWidget {
   const ShopPage({Key? key}) : super(key: key);
 
   @override
   State<ShopPage> createState() => _ShopPageState();
 }

 class _ShopPageState extends State<ShopPage> {
   @override
   Widget build(BuildContext context) {
     return Consumer<CoffeeShop>(
       builder: (context,value, child) =>SafeArea(
         child:Padding(
       padding: const EdgeInsets.all(25.0),
       child: Column(
         children: [
           //heading message
           const Text("How would you like Your coffee?",
           style: TextStyle(fontSize: 20),
           ),
           const SizedBox(height: 25),

           //list of coffee to buy
           Expanded(

             child: ListView.builder(
               itemCount: value.coffeeShop.length,
               itemBuilder: (context, index){
             // get individual coffee
               Coffee eachCoffee =  value.coffeeShop[index];

             // return the tile for the coffee
               return CoffeeTile(coffee: eachCoffee);

     },
     ),
     ),
         ],
       ),
     ),
     )
     );
   }
 }
 
