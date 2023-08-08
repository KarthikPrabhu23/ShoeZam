// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:shop_flutter/constants/colorfile.dart';
import 'package:shop_flutter/screens/cart/cart.dart';
import 'package:shop_flutter/screens/home/homescreen.dart';
import 'package:shop_flutter/screens/profile/my_profile.dart';

class DrawerList extends StatelessWidget {
  const DrawerList({super.key});

  Widget listTile(
      {required IconData icon, required String title, VoidCallback? onTap}) {
    return ListTile(
      onTap: onTap,
      leading: Icon(
        icon,
        size: 34,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.black),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        width: 80,
        color: Col.AppColor2,
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 230,
                  child: DrawerHeader(
                    child: Column(children: [
                      CircleAvatar(
                        backgroundColor: Colors.black45,
                        radius: 48,
                        child: CircleAvatar(
                          // backgroundColor: Col.AppColor2,
                          backgroundImage: AssetImage("assets/b2.jpeg"),
                          radius: 45,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 17,
                          ),
                          Text(
                            'Welcome User,',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.all(3.0),
                            child: Container(
                              height: 24,
                              child: OutlinedButton(
                                onPressed: () {},
                                child: Text(
                                  'Login',
                                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ]),
                  ),
                ),
                Column(
                  children: [
                    listTile(
                      icon: Icons.home,
                      title: "Home",
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ),
                        );
                      },
                    ),
                    listTile(
                      icon: Icons.favorite,
                      title: "Wishlist",
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => MyProfile(),
                          ),
                        );
                      },
                    ),
                    listTile(
                      icon: Icons.shopping_cart_rounded,
                      title: "Cart",
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => cart(),
                          ),
                        );
                      },
                    ),
                    listTile(
                      icon: Icons.notifications_active,
                      title: "Notifications",
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => MyProfile(),
                          ),
                        );
                      },
                    ),
                    listTile(
                      icon: Icons.format_quote_rounded,
                      title: "More info",
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => MyProfile(),
                          ),
                        );
                      },
                    ),
                    listTile(
                      icon: Icons.person,
                      title: "My Profile",
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => MyProfile(),
                          ),
                        );
                      },
                    ),
                    // listTile(
                    //   icon: Icons.home,
                    //   title: "Home",
                    // ),
                    // listTile(
                    //   icon: Icons.home,
                    //   title: "Home",
                    // ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
