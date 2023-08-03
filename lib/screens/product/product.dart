// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import "package:flutter/material.dart";
import 'package:shop_flutter/screens/home/single_card_1.dart';
import "../../constants/colorfile.dart";
import "../../constants/stringfile.dart";

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
            Text(
              title,
              style: TextStyle(color: Colors.white),
            )
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
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Expanded(
              // flex: 2,
              // child:
              Container(
                width: double.infinity,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Nike',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 30),
                              ),
                              Text(
                                'Running shoes',
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 20),
                              ),
                            ],
                          ),
                          Image.asset(
                            'assets/b3.jpg',
                            height: 60,
                            width: 120,
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 270,
                      padding: EdgeInsets.all(30),
                      child: Image.asset('assets/sn11.png'),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      width: double.infinity,
                      child: Text(
                        'Choose your size',
                        style: TextStyle(
                            color: Colors.black45, fontWeight: FontWeight.w300),
                      ),
                    )
                  ],
                ),
              ),
              // ),
              // Expanded(
              //     child:
              Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '₹7,599 INR',
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w800,
                          fontSize: 23),
                    ),
                    SizedBox(height: 7),
                    Text(
                      'COD, UPI, Debit & credit card accepted',
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w200,
                          fontSize: 13),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'About the product',
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    SizedBox(height: 10),
                    Text(
                      Def.desc1,
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w300,
                        fontSize: 13,
                      ),
                    ),
                    SizedBox(height: 25),
                    Text(
                      'You might also like',
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          singleCard1(
                              shoeImage: 'assets/sn11.png',
                              shoeTitle: 'Nike',
                              shoeTitle2: 'Running shoes',
                              shoeCost: '₹3,000',
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => product(),
                                  ),
                                );
                              }),
                          singleCard1(
                              shoeImage: 'assets/sp11.png',
                              shoeTitle: 'Yeezy',
                              shoeTitle2: 'Slippers shoes',
                              shoeCost: '₹23,000',
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => product(),
                                  ),
                                );
                              }),
                          singleCard1(
                              shoeImage: 'assets/sn3.png',
                              shoeTitle: 'Yeezy',
                              shoeTitle2: 'Slippers shoes',
                              shoeCost: '₹23,000',
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => product(),
                                  ),
                                );
                              }),
                          singleCard1(
                              shoeImage: 'assets/sn2.png',
                              shoeTitle: 'Yeezy',
                              shoeTitle2: 'Slippers shoes',
                              shoeCost: '₹23,000',
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => product(),
                                  ),
                                );
                              }),
                          singleCard1(
                              shoeImage: 'assets/sp11.png',
                              shoeTitle: 'Reebok',
                              shoeTitle2: 'Jogging shoes',
                              shoeCost: '₹23,000',
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => product(),
                                  ),
                                );
                              }),
                          singleCard1(
                              shoeImage: 'assets/sp22.png',
                              shoeTitle: 'Nike',
                              shoeTitle2: 'Running shoes',
                              shoeCost: '₹23,000',
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => product(),
                                  ),
                                );
                              }),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
