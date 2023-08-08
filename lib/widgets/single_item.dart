// ignore_for_file: camel_case_types, unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:shop_flutter/constants/colorfile.dart';
import 'package:shop_flutter/constants/stringfile.dart';
import 'package:shop_flutter/screens/cart/cart.dart';
import 'package:shop_flutter/screens/home/drawer.dart';
import 'package:shop_flutter/screens/home/single_card_1.dart';
import 'package:shop_flutter/screens/home/brand_card_1.dart';
import 'package:shop_flutter/screens/product/product.dart';
import 'package:shop_flutter/screens/search/search_page.dart';

class singleItem extends StatelessWidget {
//  final bool isCart = false;
  const singleItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 11,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(104, 45, 45, 45),
            blurRadius: 7,
            spreadRadius: 0.1,
            blurStyle: BlurStyle.outer,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Container(
                  height: 100,
                  child: Center(
                    child: Image.asset(
                      'assets/sn11.png',
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 13,
            ),
            Expanded(
              child: Container(
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Product name',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          'Product detail',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          'Product info',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontWeight: FontWeight.w200,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      height: 30,
                      width: 80,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              '₹13,000',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 100,
                padding: EdgeInsets.symmetric(
                  vertical: 22,
                  horizontal: 13,
                ),
                child: CircleAvatar(
                  radius: 18,
                  backgroundColor: Color.fromARGB(179, 108, 255, 75),
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => cart(),
                        ),
                      );
                    },
                    icon: Icon(
                      Icons.add,
                      size: 22,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
