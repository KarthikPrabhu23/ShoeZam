// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shop_flutter/constants/colorfile.dart';

class DrawerList extends StatelessWidget {
  const DrawerList( {super.key});

  
  Widget listTile({required IconData icon, required String title}) {
    return ListTile(
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
        child : Container(
          width: 100,
          color: Col.HomeBGColor,
          child: ListView(
            children: [
              DrawerHeader(
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.black45,
                      radius: 40,
                      child: CircleAvatar(
                        backgroundColor: Colors.white24,
                        backgroundImage: AssetImage("assets/sn3.png"),
                        radius: 37,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Welcome User,',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          height: 20,
                          child: OutlinedButton(
                            onPressed: () {},
                            child: Text('Login'),
                            // shape: RoundedRectangleBorder(
                            //   borderRadius: BorderRadius.circular(
                            //     29,
                            //   ),
                            // ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  listTile(
                    icon: Icons.home,
                    title: "Home",
                  ),
                  listTile(
                    icon: Icons.favorite,
                    title: "Wishlist",
                  ),
                  listTile(
                    icon: Icons.shopping_cart_rounded,
                    title: "Cart",
                  ),
                  listTile(
                    icon: Icons.notifications_active,
                    title: "Notifications",
                  ),
                  listTile(
                    icon: Icons.format_quote_rounded,
                    title: "More info",
                  ),
                  listTile(
                    icon: Icons.home,
                    title: "Home",
                  ),
                  listTile(
                    icon: Icons.home,
                    title: "Home",
                  ),
                  listTile(
                    icon: Icons.home,
                    title: "Home",
                  ),
                ],
              ),
            ],
          ),
        ),
    );
     
  }
}