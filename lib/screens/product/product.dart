import "package:flutter/material.dart";

import "../../constants/colorfile.dart";

class product extends StatefulWidget {
  const product({super.key});

  @override
  State<product> createState() => _productState();
}

class _productState extends State<product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Col.AppBarColor),
        title: Text(
          'Product',
          style: TextStyle(color: Col.CardText1),
        ),
      ),
    );
  }
}
