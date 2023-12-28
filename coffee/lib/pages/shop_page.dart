import 'package:coffee/components/coffee_tile.dart';
import 'package:coffee/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/coffee.dart';
class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  //add coffee to cart
  void addToCart(Coffee coffee)
  {

    Provider.of<CoffeeShop>(context,listen: false).addItemToCart(coffee);
    //let user know it has been added to cart
    showDialog(context: context, builder: (context)=> AlertDialog(title: Text("Successfully added to cart"),
    ),);
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(builder: (context,value,child)=>SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          
          children: [
            
          const Text("How would you like your coffee?",
            style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 25),

            //list of coffe to buy
            Expanded(
  child: ListView.builder(
    itemCount: value.coffeeShop.length, // Set the itemCount to the length of the list
    itemBuilder: (context, index) {
      if (index < value.coffeeShop.length) {
        // Check if index is within bounds
        Coffee eachCoffee = value.coffeeShop[index];
        return CoffeeTile(
          coffee: eachCoffee,
          icon: const Icon(Icons.add),
        onPressed: () => addToCart(eachCoffee),
        );
        
      }
      return null; // Return null if index is out of range
    },
  ),
),

          ],
        ),
      ),
    ),
    
    );
  }
}