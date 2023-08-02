// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:shop_flutter/constants/colorfile.dart';

class singleCard1 extends StatelessWidget {
  final String shoeImage;
  final String shoeTitle;
  final String shoeTitle2;
  final String shoeCost;
  // VoidCallback instead of function
  final VoidCallback onTap;

  const singleCard1(
      {super.key,
      required this.shoeImage,
      required this.shoeTitle,
      required this.shoeTitle2,
      required this.shoeCost,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          GestureDetector(
            onTap: onTap,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Col.CardCol,
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Expanded(
                      // flex: 2,
                      // child: Image.asset('assets/sn1.png',height:250,width: 250,),
                      SizedBox(
                        height: 33,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Transform.rotate(
                            angle: -math.pi / 4,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 25),
                              child: Image.asset(
                                shoeImage,
                                scale: 0.5,
                              ),
                            ),
                          ),
                        ],
                      ),
                      // SizedBox(
                      //   height: 50,
                      // ),
                      // ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              shoeTitle,
                              style: TextStyle(
                                  color: Col.CardText1,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              shoeTitle2,
                              style: TextStyle(
                                  color: Col.CardText2,
                                  fontWeight: FontWeight.w300),
                            ),
                            const SizedBox(height: 5),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 30,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(9),
                                      border: Border.all(color: Colors.black45),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 5.0),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Text(
                                              shoeCost,
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                          // Center(
                                          //   child: Icon(
                                          //     Icons.arrow_drop_down,
                                          //     size: 23,
                                          //     color: Colors.white,
                                          //   ),
                                          // )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Expanded(
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(9),
                                      border: Border.all(color: Colors.black45),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
