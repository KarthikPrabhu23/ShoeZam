// ignore_for_file: camel_case_types, prefer_const_constructors

import "package:flutter/material.dart";

import "../../constants/colorfile.dart";

class product extends StatefulWidget {
  const product({super.key});

  @override
  State<product> createState() => _productState();
}

class _productState extends State<product> {
  Widget navigationBar({
    required Color iconColor,
    required Color bgColor,
    required Color color,
    required String title,
    required IconData iconData,
  }) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(20),
        color: color,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              size: 22,
              color: iconColor,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(title,
            style: TextStyle(color: Colors.white),)
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        children: [
          navigationBar(
            iconColor: Color.fromARGB(255, 255, 255, 255),
            bgColor: Colors.white,
            color: Colors.pink,
            title: "Add here",
            iconData: Icons.favorite,
          ),
          navigationBar(
            iconColor: Color.fromARGB(255, 255, 255, 255),
            bgColor: Color.fromARGB(255, 255, 255, 255),
            color: Color.fromARGB(255, 25, 63, 236),
            title: "Add to cart",
            iconData: Icons.shop,
          ),
        ],
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color.fromARGB(255, 255, 255, 255)),
        title: Text(
          'Product',
          style: TextStyle(color: Col.CardText1),
        ),
      ),
    );
  }
}
