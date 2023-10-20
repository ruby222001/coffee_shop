import 'package:coffee/models/coffee_shop.dart';
import 'package:coffee/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => CoffeeShop(),
    builder: (context, child) =>  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    ),
    );
  }}
     