import 'package:coffee/components/coffee_tile.dart';
import 'package:coffee/models/coffee.dart';
import 'package:coffee/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();

}

class _CartPageState extends State<CartPage> {
  void removeFromCart(Coffee coffee){
    Provider.of<CoffeeShop>(context,listen:false).removeItemFromCart(coffee);
  }
  //paymenrt
  void PayNow(){

  }
  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.all(25.0),
      child: Consumer<CoffeeShop>(builder: (context,value,child)=> SafeArea(
        child: Column(
          children: [
         const Text('Your Cart',
         style: TextStyle(fontSize: 20),),
         Expanded(
          child: ListView.builder(
            itemCount: value.userCart.length,
            itemBuilder: (context,index){
            //get individual cofee
            Coffee eachCoffee = value.userCart[index];
            //return coffee tile
            return CoffeeTile(coffee: eachCoffee, onPressed:()=> removeFromCart(eachCoffee) , icon: const Icon(Icons.delete));

            }),
            ),
            //pay button
            GestureDetector(
              onTap: PayNow,
              child: Container(
                padding: const EdgeInsets.all(25),
                width: double.infinity,
                decoration: BoxDecoration(color:Colors.brown,
                borderRadius: BorderRadius.circular(12)),
                child:const Center(
                  child: Text("Pay Now",
                              style: TextStyle(color:Colors.white,
                              ),
                              ),
                ),
              ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}