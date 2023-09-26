import 'package:coffessss/components/bottom_nav_bar.dart';
import 'package:coffessss/pages/shop_page_.dart';
import 'package:flutter/material.dart';

import 'cart_page.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //navigate bottom bar
  int selectedIndex = 0;
  void navigateBottomBar(int index){
    setState(() {
      selectedIndex = index;
    });
  }

  //pages
  final List<Widget> _page = [
    //shop page
    ShopPage(),

    // cart page
    CartPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey,
      bottomNavigationBar: MyBottomNavBar(
        onTabchange: (index) => navigateBottomBar(index),
      ),
      body: _page[selectedIndex],
    );
  }
}
