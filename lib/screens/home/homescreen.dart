// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shop_flutter/constants/colorfile.dart';
import 'package:shop_flutter/constants/stringfile.dart';
import 'package:shop_flutter/screens/cart/cart.dart';
import 'package:shop_flutter/screens/home/drawer.dart';
import 'package:shop_flutter/screens/home/single_card_1.dart';
import 'package:shop_flutter/screens/home/brand_card_1.dart';
import 'package:shop_flutter/screens/product/product.dart';
import 'package:shop_flutter/screens/search/search_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget _allShoes(context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Popular shoes',
                style: TextStyle(color: Colors.black87, fontSize: 20),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 5),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                singleCard1(
                  shoeImage: 'assets/sn11.png',
                  shoeTitle: 'Nike',
                  shoeTitle2: 'Running shoes',
                  shoeCost: '₹13,000',
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => product(
                            proName: 'Nike',
                            proImage: 'assets/sn11.png',
                            brandLogo: 'assets/b3.jpg',
                            proPrice: '₹13,000',
                            proDesc: Def.descN),
                      ),
                    );
                  },
                ),
                singleCard1(
                  shoeImage: 'assets/sp11.png',
                  shoeTitle: 'Adidas',
                  shoeTitle2: 'Sports shoes',
                  shoeCost: '₹9,000',
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => product(
                            proName: 'Adidas',
                            proImage: 'assets/sp11.png',
                            brandLogo: 'assets/b2.jpeg',
                            proPrice: '₹9,000',
                            proDesc: Def.descA),
                      ),
                    );
                  },
                ),
                singleCard1(
                  shoeImage: 'assets/sn2.png',
                  shoeTitle: 'Nike',
                  shoeTitle2: 'Strap shoes',
                  shoeCost: '₹23,000',
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => product(
                            proName: 'Nike',
                            proImage: 'assets/sn2.png',
                            brandLogo: 'assets/b3.jpg',
                            proPrice: '₹23,000',
                            proDesc: Def.descN),
                      ),
                    );
                  },
                ),
                singleCard1(
                  shoeImage: 'assets/sp11.png',
                  shoeTitle: 'Puma',
                  shoeTitle2: 'Jogging shoes',
                  shoeCost: '₹9,000',
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => product(
                            proName: 'Puma',
                            proImage: 'assets/sp11.png',
                            brandLogo: 'assets/b1.jpg',
                            proPrice: '₹9,000',
                            proDesc: Def.descA),
                      ),
                    );
                  },
                ),
                singleCard1(
                  shoeImage: 'assets/sp22.png',
                  shoeTitle: 'Adidas',
                  shoeTitle2: 'Running shoes',
                  shoeCost: '₹12,000',
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => product(
                            proName: 'Adidas',
                            proImage: 'assets/sp22.png',
                            brandLogo: 'assets/b2.jpeg',
                            proPrice: '₹12,000',
                            proDesc: Def.descA),
                      ),
                    );
                  },
                ),
                singleCard1(
                  shoeImage: 'assets/sp3.png',
                  shoeTitle: 'Puma',
                  shoeTitle2: 'Running shoes',
                  shoeCost: '₹14,000',
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => product(
                            proName: 'Puma',
                            proImage: 'assets/sp3.png',
                            brandLogo: 'assets/b1.jpg',
                            proPrice: '₹14,000',
                            proDesc: Def.descP),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _brandScroll(context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 7),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Our Partners',
                style: TextStyle(color: Colors.black87, fontSize: 15),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              brandCard1(
                brandImage: 'assets/b1.jpg',
              ),
              brandCard1(
                brandImage: 'assets/b2.jpeg',
              ),
              brandCard1(
                brandImage: 'assets/b3.jpg',
              ),
              brandCard1(
                brandImage: 'assets/b2.jpeg',
              ),
              brandCard1(
                brandImage: 'assets/b3.jpg',
              ),
              brandCard1(
                brandImage: 'assets/b1.jpg',
              ),
              brandCard1(
                brandImage: 'assets/b2.jpeg',
              ),
              brandCard1(
                brandImage: 'assets/b3.jpg',
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _runShoes(context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Running shoes',
                style: TextStyle(color: Colors.black87, fontSize: 20),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 5),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                singleCard1(
                  shoeImage: 'assets/sn2.png',
                  shoeTitle: 'Nike',
                  shoeTitle2: 'Running shoes',
                  shoeCost: '₹14,000',
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => product(
                            proName: 'Nike',
                            proImage: 'assets/sn2.png',
                            brandLogo: 'assets/b3.jpg',
                            proPrice: '₹14,000',
                            proDesc: Def.descN),
                      ),
                    );
                  },
                ),
                singleCard1(
                  shoeImage: 'assets/sp22.png',
                  shoeTitle: 'Puma',
                  shoeTitle2: 'Running shoes',
                  shoeCost: '₹11,000',
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => product(
                            proName: 'Puma',
                            proImage: 'assets/sp22.png',
                            brandLogo: 'assets/b3.jpg',
                            proPrice: '₹11,000',
                            proDesc: Def.descP),
                      ),
                    );
                  },
                ),
                singleCard1(
                  shoeImage: 'assets/sp3.png',
                  shoeTitle: 'Adidas',
                  shoeTitle2: 'Running shoes',
                  shoeCost: '₹14,000',
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => product(
                            proName: 'Adidas',
                            proImage: 'assets/sp3.png',
                            brandLogo: 'assets/b2.jpeg',
                            proPrice: '₹14,000',
                            proDesc: Def.descA),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Col.HomeBGColor,
      drawer: DrawerList(),
      appBar: AppBar(
        backgroundColor: Col.AppBarColor,
        title: const Text('ShoeZam!', textAlign: TextAlign.center,),

      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 160,
                width: 370,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Col.TopCard,
                  image: const DecorationImage(
                      image: AssetImage('assets/man2.png')),
                ),
              ),
              _allShoes(context),
              _brandScroll(context),
              _runShoes(context),
              SizedBox(
                height: 60,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
