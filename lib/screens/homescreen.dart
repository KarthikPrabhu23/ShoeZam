// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:shop_flutter/constants/colorfile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget singleCard1() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      height: 250,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Col.CardCol,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Expanded(
              // flex: 2,
              // child: Image.asset('assets/s1.png',height:250,width: 250,),
              Transform.rotate(
                angle: -math.pi / 4,
                child: Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: Image.asset(
                    'assets/s1.png',
                    scale: 0.5,
                  ),
                ),
              ),

              // ),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nike',
                    style: TextStyle(
                        color: Col.CardText1, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Running shoes',
                    style: TextStyle(
                        color: Col.CardText2, fontWeight: FontWeight.w300),
                  ),
                  const SizedBox(height: 5),
                  Row(
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
                              children: const [
                                Expanded(
                                  child: Text(
                                    'Blue ',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black45,
                                    ),
                                  ),
                                ),
                                Center(
                                  child: Icon(
                                    Icons.arrow_drop_down,
                                    size: 23,
                                    color: Colors.white,
                                  ),
                                )
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
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            border: Border.all(color: Colors.black45),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }

  Widget brandCard1() {
    return Container(
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
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/puma.jpg'),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Image.asset(
                  'assets/puma.jpg',
                  fit: BoxFit.cover,
                ),
                // Transform.rotate(
                //   angle: -math.pi / 4,
                //   child: Padding(
                //     padding: const EdgeInsets.only(right: 25),
                //     child: Image.asset(
                //       'assets/s1.png',
                //       scale: 0.5,
                //     ),
                //   ),
                // ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget listTile({required IconData icon, required String title}) {
    return ListTile(
      leading: Icon(
        icon,
        size: 34,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.black),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Col.AppBarColor,
      drawer: Drawer(
        child: Container(
          color: Col.HomeBGColor,
          child: ListView(
            children: [
              DrawerHeader(
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.black45,
                      radius: 40,
                      child: CircleAvatar(
                        backgroundColor: Colors.white24,
                        radius: 37,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Welcome Karthik'),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 20,
                          child: OutlinedButton(
                            onPressed: () {},
                            child: Text('Login'),
                            // shape: RoundedRectangleBorder(
                            //   borderRadius: BorderRadius.circular(
                            //     29,
                            //   ),
                            // ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              listTile(
                icon: Icons.home,
                title: "Home",
              )
            ],
          ),
        ),
      ),
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
                  singleCard1(),
                  singleCard1(),
                  singleCard1(),
                  singleCard1(),
                  singleCard1(),
                  singleCard1(),
                  singleCard1(),
                  singleCard1(),
                  singleCard1(),
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
                  brandCard1(),
                  brandCard1(),
                  brandCard1(),
                  brandCard1(),
                  brandCard1(),
                  brandCard1(),
                  brandCard1(),
                  brandCard1(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
