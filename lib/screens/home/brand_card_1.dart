// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shop_flutter/constants/colorfile.dart';


class brandCard1 extends StatelessWidget {
  final String brandImage;

  const brandCard1({super.key, required this.brandImage});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 3),
            height: 70,
            width: 110,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Col.CardCol,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/b3.jpg'),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Image.asset(
                        'assets/b3.jpg',
                        fit: BoxFit.cover,
                      ),
                      // ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
