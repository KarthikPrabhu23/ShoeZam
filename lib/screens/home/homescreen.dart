// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shop_flutter/constants/colorfile.dart';
import 'package:shop_flutter/screens/home/drawer.dart';
import 'package:shop_flutter/screens/home/single_card_1.dart';
import 'package:shop_flutter/screens/home/brand_card_1.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Col.AppBarColor,
      drawer: DrawerList(),
      appBar: AppBar(
        backgroundColor: Col.AppBarColor,
        title: const Text('ShoeZam'),
        actions: [
          CircleAvatar(
            radius: 23,
            backgroundColor: Col.IconBG,
            child: const Icon(
              Icons.search,
              size: 22,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: CircleAvatar(
              radius: 23,
              backgroundColor: Col.IconBG,
              child: const Icon(
                Icons.shopping_bag,
                size: 22,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Column(
          children: [
            Container(
              height: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Col.TopCard,
                image:
                    const DecorationImage(image: AssetImage('assets/man2.png')),
              ),
            ),
            // const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Popular shoes',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    'view all',
                    style: TextStyle(color: Colors.white54),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  singleCard1(
                      shoeImage: 'assets/sn11.png',
                      shoeTitle: 'Nike',
                      shoeTitle2: 'Running shoes',
                      shoeCost: '₹3,000'),
                  singleCard1(
                      shoeImage: 'assets/sp11.png',
                      shoeTitle: 'Yeezy',
                      shoeTitle2: 'Slippers shoes',
                      shoeCost: '₹23,000'),
                  singleCard1(
                      shoeImage: 'assets/sn3.png',
                      shoeTitle: 'Yeezy',
                      shoeTitle2: 'Slippers shoes',
                      shoeCost: '₹23,000'),
                  singleCard1(
                      shoeImage: 'assets/sn2.png',
                      shoeTitle: 'Yeezy',
                      shoeTitle2: 'Slippers shoes',
                      shoeCost: '₹23,000'),
                  singleCard1(
                      shoeImage: 'assets/sp11.png',
                      shoeTitle: 'Reebok',
                      shoeTitle2: 'Jogging shoes',
                      shoeCost: '₹23,000'),
                  singleCard1(
                      shoeImage: 'assets/sp22.png',
                      shoeTitle: 'Nike',
                      shoeTitle2: 'Running shoes',
                      shoeCost: '₹23,000'),
                  singleCard1(
                      shoeImage: 'assets/sp22.png',
                      shoeTitle: 'Sketchers',
                      shoeTitle2: 'Formal shoes',
                      shoeCost: '₹23,000'),
                  singleCard1(
                      shoeImage: 'assets/sn11.png',
                      shoeTitle: 'Nike',
                      shoeTitle2: 'Running shoes',
                      shoeCost: '₹23,000'),
                  singleCard1(
                      shoeImage: 'assets/sn11.png',
                      shoeTitle: 'Adidas',
                      shoeTitle2: 'Walking shoes',
                      shoeCost: '₹23,000'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Our Partners',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  brandCard1(brandImage: 'assets/b1.jpg',),
                  brandCard1(brandImage: 'assets/b2.jpeg',),
                  brandCard1(brandImage: 'assets/b3.jpg',),
                  brandCard1(brandImage: 'assets/b2.jpeg',),
                  brandCard1(brandImage: 'assets/b3.jpg',),
                  brandCard1(brandImage: 'assets/b1.jpg',),
                  brandCard1(brandImage: 'assets/b1.jpg',),
                  brandCard1(brandImage: 'assets/b1.jpg',),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
