// ignore_for_file: unused_import, prefer_const_constructors

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
  int currindex = 2;
  final screens = const [
    cart(),
    HomeScreen(),
    HomeScreen(),
    searchPage(),
    MyProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    const items = <Widget>[
      Icon(
        Icons.shopping_cart,
        size: 30,
        color: Colors.white,
      ),
      Icon(
        Icons.favorite,
        size: 30,
        color: Colors.white,
      ),
      Icon(
        Icons.home,
        size: 30,
        color: Color.fromARGB(255, 255, 255, 255),
      ),
      Icon(
        Icons.search,
        size: 30,
        color: Colors.white,
      ),
      Icon(
        Icons.person,
        size: 30,
        color: Colors.white,
      ),
    ];
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.transparent,
      bottomNavigationBar: currindex == 0
          ? null
          : CurvedNavigationBar(
              color: Color.fromARGB(234, 7, 123, 255),
              buttonBackgroundColor: Color.fromARGB(255, 11, 43, 99),

              backgroundColor: Colors.transparent,
              index: currindex,
              height: 60,
              items: items,
              onTap: (index) => setState(() => this.currindex = index),
            ),
      body: screens[currindex],
    );
  }
}
