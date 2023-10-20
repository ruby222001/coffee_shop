import 'package:flutter/material.dart';

import '../models/coffee.dart';

class CoffeeTile extends StatelessWidget {
  final Coffee coffee;
  void Function()? onPressed;
  CoffeeTile({super.key, required this.coffee,
  required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12)
        ),
        margin: const EdgeInsets.only(bottom: 10),
        padding: EdgeInsets.symmetric(vertical: 25,horizontal: 10),

      child: ListTile(
        title: Text(coffee.name),
        subtitle: Text(coffee.price),
        leading: Image.asset(coffee.imagePath),
        trailing: IconButton(icon:Icon(Icons.add) ,
        onPressed: onPressed,
        ),

      ),
    );
  }
}