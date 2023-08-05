// ignore_for_file: unused_import, file_names, camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shop_flutter/constants/colorfile.dart';
import 'package:shop_flutter/constants/stringfile.dart';
import 'package:shop_flutter/screens/home/drawer.dart';
import 'package:shop_flutter/screens/home/single_card_1.dart';
import 'package:shop_flutter/screens/home/brand_card_1.dart';
import 'package:shop_flutter/screens/product/product.dart';
import 'package:shop_flutter/widgets/single_item.dart';

class searchPage extends StatelessWidget {
  const searchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Col.AppBarColor,
        title: const Text(
          'Search ',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.menu,
            ),
          ),
        ],
      ),
      drawer: const DrawerList(),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    'List items',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                Container(
                  height: 55,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: BorderSide.none,
                      ),
                      fillColor: const Color.fromARGB(31, 149, 149, 149),
                      filled: true,
                      hintText: 'Search in the store',
                      suffixIcon: const Icon(Icons.search),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                singleItem(),
                singleItem(),
                singleItem(),
                singleItem(),
                singleItem(),
                singleItem(),
                singleItem(),
                singleItem(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
