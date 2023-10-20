import 'package:flutter/material.dart';

import 'coffee.dart';

class CoffeeShop extends ChangeNotifier {
  //coffee for sale list
  final List<Coffee> _shop = [
    //black coffee
    Coffee(
      name: 'Black Coffee',
      price: "4.00",
      imagePath: "lib/images/black.png",
    ),
    //latte

    Coffee(
      name: 'Latte',
      price: "3.10",
      imagePath: "lib/images/latte.png",
    ),
    //espresso
 Coffee(
      name: 'Espresso',
      price: "3.10",
      imagePath: "lib/images/espresso.png",
    ),
    //ice  coffee
     Coffee(
      name: 'Ice coffee',
      price: "3.10",
      imagePath: "lib/images/iced-coffee.png",
    ),
  ];

  //user cart
  List<Coffee> _userCart =[];
  

  //get coffee list
  List<Coffee> get coffeeShop => _shop;
  //get user cart
  List<Coffee> get userCart => _userCart;

  //add item to cart
  void addItemToCart(Coffee coffee){
    _userCart.add(coffee);
    notifyListeners();
  }
  //remove item from cart
  void removeItemFromCart(Coffee coffee){
    _userCart.remove(coffee);
        notifyListeners();

  }
}
