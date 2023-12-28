import 'package:coffee/components/bottom_nav.dart';
import 'package:coffee/const.dart';
import 'package:flutter/material.dart';

import 'cart_page.dart';
import 'shop_page.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //selected index
  int _selectedIndex =0;
  void navigateBottomBar(int index){
    setState(() {
      _selectedIndex=index;
    });
  }
  //pages
  final List<Widget> _pages= [
    //home page
    
    //shop page
    const ShopPage(),
    //cart page
    const CartPage(),
  ];
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      
       backgroundColor: backgroundColor,
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index)=> navigateBottomBar(index),
    ),
    body: _pages[_selectedIndex],
    );
  }
}