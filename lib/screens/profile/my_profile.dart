// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:shop_flutter/constants/colorfile.dart';
import 'package:shop_flutter/screens/home/drawer.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      appBar: AppBar(
        title: Text(
          'My Account',
          style: TextStyle(
            fontSize: 20,
            color: Col.Title,
          ),
        ),
      ),
      drawer: DrawerList(),
      body: Column(
        children: [
          Container(
            height: 250,
            width: double.infinity,
            color: Colors.deepPurpleAccent,
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
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          Container(
            width: 380,
            height: 500,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(40),
            ),
            child: ListView(),
          ),
        ],
      ),
    );
  }
}
