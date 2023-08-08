// ignore_for_file: prefer_const_constructors, camel_case_types, unused_import, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:shop_flutter/constants/colorfile.dart';
import 'package:shop_flutter/constants/stringfile.dart';
import 'package:shop_flutter/screens/home/drawer.dart';
import 'package:shop_flutter/screens/home/single_card_1.dart';
import 'package:shop_flutter/screens/home/brand_card_1.dart';
import 'package:shop_flutter/screens/product/product.dart';
import 'package:shop_flutter/widgets/cart_item.dart';
import 'package:shop_flutter/widgets/single_item.dart';

class cart extends StatefulWidget {
  const cart({super.key});

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: ListTile(
      //   title: Text('Total'),
      //   subtitle: Text(
      //     '₹12,000',
      //     style: TextStyle(
      //         color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500),
      //   ),
      //   trailing: Container(
      //     width: 150,
      //     decoration: BoxDecoration(),
      //     child: MaterialButton(
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(30),
      //       ),
      //       color: Colors.green,
      //       onPressed: () {},
      //       child: Text('Submit'),
      //     ),
      //   ),
      // ),
      appBar: AppBar(
        title: Text(
          'Cart',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      drawer: DrawerList(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 610,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  cartItem(),
                  cartItem(),
                  cartItem(),
                  cartItem(),
                  cartItem(),
                  cartItem(),
                  cartItem(),
                  cartItem(),
                  cartItem(),
                  cartItem(),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            title: Text('Total'),
            subtitle: Text(
              '₹12,000',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
            trailing: Container(
              width: 150,
              decoration: BoxDecoration(),
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                color: Colors.green,
                onPressed: () {},
                child: Text('Submit'),
              ),
            ),
          ),
          SizedBox(height: 75,),
        ],
      ),
    );
  }
}
