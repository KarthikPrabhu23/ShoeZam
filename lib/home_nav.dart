// ignore_for_file: unused_import

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:shop_flutter/screens/cart/cart.dart';
import 'package:shop_flutter/screens/home/homescreen.dart';
import 'package:shop_flutter/screens/product/product.dart';
import 'package:shop_flutter/screens/profile/my_profile.dart';
import 'package:shop_flutter/screens/search/search_page.dart';

import 'constants/stringfile.dart';

class homeNav extends StatefulWidget {
  const homeNav({super.key});

  @override
  State<homeNav> createState() => _homeNavState();
}

class _homeNavState extends State<homeNav> {
  int index = 2;
  final screens = const  [
    cart(),
    HomeScreen(),
    // product(
    //     proName: 'Nike',
    //     proImage: 'assets/sn11.png',
    //     brandLogo: 'assets/b3.jpg',
    //     proPrice: '₹13,000',
    //     proDesc: Def.descN),
    HomeScreen(),
    searchPage(),
    MyProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    const items = <Widget>[
      Icon(Icons.shopping_cart, size: 30, color: Colors.white,),
      Icon(Icons.favorite, size: 30, color: Colors.white,),
      Icon(Icons.home, size: 30, color: Colors.white,),
      Icon(Icons.search, size: 30, color: Colors.white,),
      Icon(Icons.person, size: 30, color: Colors.white,),
    ];
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.transparent,
      bottomNavigationBar: CurvedNavigationBar(
        color: Color.fromARGB(225, 7, 123, 255),
        buttonBackgroundColor: Color.fromARGB(255, 11, 43, 99),

        backgroundColor: Colors.transparent,
        index: index,
        // height: 50,
        items: items,
        onTap: (index) => setState(() => this.index = index),
      ),
      body: screens[index],
    );
  }
}
