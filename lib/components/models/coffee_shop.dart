 import 'package:flutter/material.dart';

import 'coffee.dart';

class CoffeeShop extends ChangeNotifier {
  //coffee for sale list
  final List<Coffee> _shop = [
     // blackcoffee
     Coffee(
         name: 'Long Black',
         price: "4.10",
         imagePath: "lib/images/black.png",
         ),

    //latte
    Coffee(
        name: 'Latte',
        price: "4.20",
     imagePath: "lib/images/latte.png",
        ),
    //espresso
      Coffee(
          name: 'Espresso',
          price: "3.50",
          imagePath: "lib/images/espresso.png",
          ),
       //iced coffee
       Coffee(
           name: 'Iced coffee',
           price: "4.40",
           imagePath: "lib/images/iced_coffee.png",
           ),
          ];
          // user cart
         List<Coffee> userCart = [];

          //  get coffee list
          List<Coffee> get coffeeShop => _shop;
          
          // get user cart
         List<Coffee> get _userCart => userCart;

          // adding item to cart
          void addItemToCart(Coffee coffee) {
            userCart.add(coffee);
            notifyListeners();
          }
            // remove item from cart
          void removeItemFromCart(Coffee coffee) {
           userCart.remove(coffee);
           notifyListeners();
          }


}


