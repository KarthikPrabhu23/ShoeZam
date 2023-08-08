// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:shop_flutter/screens/cart/cart.dart';
import 'package:shop_flutter/screens/home/homescreen.dart';
import 'package:shop_flutter/screens/product/product.dart';
import 'package:shop_flutter/screens/profile/my_profile.dart';
import 'package:shop_flutter/screens/search/search_page.dart';

import 'constants/colorfile.dart';
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

  // final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

  final list = [
    cart(),
    HomeScreen(),
    HomeScreen(),
    searchPage(),
    MyProfile(),
  ];

  void onTap(int index) {
    if (currindex != index) {
      setState(() {
        currindex = index;
      });
    }
  }

  final bottomNavigationBarItems = const [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
    BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet), label: 'Pay Screen'),
    BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet), label: 'Pay Screen'),
    BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet), label: 'Pay Screen'),
    BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet), label: 'Pay Screen'),

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
        size: 50,
        color: Colors.white,
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
    return WillPopScope(
      child: SafeArea(
        child: Scaffold(
          extendBody: true,
          backgroundColor: Colors.transparent,
          bottomNavigationBar:  CurvedNavigationBar(
                  color: Col.AppBarColor,
                  buttonBackgroundColor: Color.fromARGB(255, 11, 43, 99),
                  backgroundColor: Colors.transparent,
                  animationCurve: Curves.easeInOutCubicEmphasized,
                  animationDuration:  Duration(milliseconds: 800),
                  index: currindex,
                  height: 65,
                  items: items,
                  onTap: onTap,
                  // currentIndex: currindex,
                ),
          body: IndexedStack(index: currindex, children: list),
          // bottomNavigationBar: _bottomNavigationBar(),

          // onTap: onTap,
          // items: bottomNavigationBarItems,
        ),
      ),
      onWillPop: () async {
        // You can define custom conditions to determine whether to allow the page to pop or perform a different action.
        return currindex == 2;
      },
    );
  }

  // _onTap(int tabIndex) {
  //   if (tabIndex == currindex) return;

  //   switch (tabIndex) {
  //     case 0:
  //       currindex == 2
  //           ? _navigatorKey.currentState?.pushNamed("cart")
  //           : _navigatorKey.currentState?.pushReplacementNamed("cart");
  //       break;
  //     case 1:
  //       currindex == 2
  //           ? _navigatorKey.currentState?.pushNamed("home")
  //           : _navigatorKey.currentState?.pushReplacementNamed("home");
  //       break;
  //     case 2:
  //       currindex == 2
  //           ? _navigatorKey.currentState?.pushNamed("home")
  //           : _navigatorKey.currentState?.pushReplacementNamed("home");
  //       break;
  //     case 3:
  //       currindex == 2
  //           ? _navigatorKey.currentState?.pushNamed("search")
  //           : _navigatorKey.currentState?.pushReplacementNamed("search");
  //       break;
  //     case 4:
  //       currindex == 2
  //           ? _navigatorKey.currentState?.pushNamed("profile")
  //           : _navigatorKey.currentState?.pushReplacementNamed("profile");
  //       break;
  //   }
  //   setState(
  //     () {
  //       currindex = tabIndex;
  //     },
  //   );
  // }

}
