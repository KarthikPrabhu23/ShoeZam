import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:shop_flutter/constants/colorfile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorfile.barColor,
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(0, 64, 77, 88),
        title: const Text('Home'),
        actions: const [
          CircleAvatar(
            radius: 23,
            backgroundColor: Color.fromARGB(172, 3, 168, 244),
            child: Icon(
              Icons.search,
              size: 22,
              color: Colors.black,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.0),
            child: CircleAvatar(
              radius: 23,
              backgroundColor: Color.fromARGB(172, 3, 168, 244),
              child: Icon(
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
              height: 175,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.amber,
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
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 20),
                  ),
                  Text(
                    'view all',
                    style: TextStyle(color: Colors.lightGreen),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  height: 250,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(123, 231, 37, 37),
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
                              const Text(
                                'Nike',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              const Text(
                                'Running shoes',
                                style: TextStyle(
                                    color: Color.fromARGB(201, 255, 255, 255),
                                    fontWeight: FontWeight.w300),
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
                                        border:
                                            Border.all(color: Colors.black45),
                                      ),
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 5.0),
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
                                        border:
                                            Border.all(color: Colors.black45),
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
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
