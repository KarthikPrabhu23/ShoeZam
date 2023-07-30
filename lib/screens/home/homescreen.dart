// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shop_flutter/constants/colorfile.dart';
import 'package:shop_flutter/screens/home/single_card_1.dart';
import 'package:shop_flutter/screens/home/brand_card_1.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

//   Widget brandCard1() {
//     return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 3),
//       height: 70,
//       width: 110,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20),
//         color: Col.CardCol,
//       ),
//       child: Padding(
//         padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
//         child: Center(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Container(
//                 height: 70,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(20),
//                   image: const DecorationImage(
//                     fit: BoxFit.cover,
//                     image: AssetImage('assets/b1.jpg'),
//                   ),
//                 ),
//               ),
//               Expanded(
//                 flex: 2,
//                 child: Image.asset(
//                   'assets/b1.jpg',
//                   fit: BoxFit.cover,
//                 ),
//                 // Transform.rotate(
//                 //   angle: -math.pi / 4,
//                 //   child: Padding(
//                 //     padding: const EdgeInsets.only(right: 25),
//                 //     child: Image.asset(
//                 //       'assets/sn1.png',
//                 //       scale: 0.5,
//                 //     ),
//                 //   ),
//                 // ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

// //

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
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Welcome User,',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 12,
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
              Column(
                children: [
                  listTile(
                    icon: Icons.home,
                    title: "Home",
                  ),
                  listTile(
                    icon: Icons.favorite,
                    title: "Wishlist",
                  ),
                  listTile(
                    icon: Icons.shopping_cart_rounded,
                    title: "Cart",
                  ),
                  listTile(
                    icon: Icons.notifications_active,
                    title: "Notifications",
                  ),
                  listTile(
                    icon: Icons.format_quote_rounded,
                    title: "More info",
                  ),
                  listTile(
                    icon: Icons.home,
                    title: "Home",
                  ),
                  listTile(
                    icon: Icons.home,
                    title: "Home",
                  ),
                  listTile(
                    icon: Icons.home,
                    title: "Home",
                  ),
                ],
              ),
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
                  brandCard1(brandImage: 'assets/b3.png',),
                  brandCard1(brandImage: 'assets/b1.png',),
                  brandCard1(brandImage: 'assets/b1.jpg',),
                  brandCard1(brandImage: 'assets/b1.png',),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
