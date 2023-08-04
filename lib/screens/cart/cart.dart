// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:shop_flutter/constants/colorfile.dart';
import 'package:shop_flutter/constants/stringfile.dart';
import 'package:shop_flutter/screens/home/drawer.dart';
import 'package:shop_flutter/screens/home/single_card_1.dart';
import 'package:shop_flutter/screens/home/brand_card_1.dart';
import 'package:shop_flutter/screens/product/product.dart';


class cart extends StatelessWidget {
  const cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

      body: ListView(
        
      )
      ,
    );
  }
}