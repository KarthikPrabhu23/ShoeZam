// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, unused_import

import 'package:flutter/material.dart';
import 'package:shop_flutter/constants/colorfile.dart';
import 'package:shop_flutter/screens/home/drawer.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  Widget ListView({required IconData icon, required String title}) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ListTile(
          leading: Icon(icon),
          title: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          trailing: Icon(Icons.arrow_forward_ios_rounded),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Col.AppColor2,
      appBar: AppBar(
        backgroundColor:  Col.AppColor,
        title: Text(
          'My Account',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      drawer: DrawerList(),
      body: Column(
        children: [
          Container(
            height: 225,
            width: double.infinity,
            color: Col.AppColor2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 73,
                  backgroundColor: const Color.fromARGB(255, 204, 177, 177),
                  child: CircleAvatar(
                    radius: 68,
                    backgroundImage: AssetImage("assets/b2.jpeg"),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Karthik Prabhu',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'karthikprabhu@gmail.com',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 380,
            height:450,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(40),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromARGB(221, 28, 27, 27),
                  blurRadius: 16,
                  spreadRadius: 0.5,
                  blurStyle: BlurStyle.normal,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ListView(icon: Icons.shopping_cart_sharp, title: 'My order'),
                  ListView(icon: Icons.location_on, title: 'My Address'),
                  ListView(icon: Icons.person, title: 'Refer a friend'),
                  ListView(icon: Icons.link_sharp, title: 'About us'),
                  ListView(icon: Icons.file_copy, title: 'Terms & Conditions'),
                  ListView(icon: Icons.logout_outlined, title: 'Log out'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
