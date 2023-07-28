import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Home'),
        actions: const [
          CircleAvatar(
            radius: 23,
            backgroundColor: Colors.lightBlue,
            child: Icon(Icons.search, size: 22, color: Colors.black,),
          ),
          SizedBox(width: 10,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal:18.0),
            child: CircleAvatar(
              radius: 23,
              backgroundColor: Colors.lightBlue,
              child: Icon(Icons.shopping_bag  , size: 22, color: Colors.black,),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 15),
        child: Column(
          children: [
            Container(
              height: 175,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.amber,
                image: const DecorationImage(image: AssetImage('assets/man2.png')),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Popular shoes', style: TextStyle(color: Color.fromARGB(255, 80, 74, 195), fontSize: 20),),
                  Text('view all', style: TextStyle(color: Colors.lightGreen),),
                  
                  
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  height: 250,
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Image.asset('assets/man2.png'),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:  [
                              const Text('Nike', 
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight:FontWeight.bold
                                ),
                              ),
                              const Text('Running shoes', 

                                style: TextStyle(
                                  color: Color.fromARGB(201, 255, 255, 255),
                                  fontWeight:FontWeight.w300
                                ),
                              ),
                              const SizedBox(height: 5),
                              Row(
                                children: [
                                  Expanded(
                                    child: 
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal:5.0),
                                      child: Container(
                                        height: 30,
                                        width: 50,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(9),
                                          border: Border.all(color: Colors.black45),
                                        ),
                                        child: Row(
                                          children: const [
                                            Expanded(
                                              child: 
                                                Text('Blue ', 
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
                                    child: 
                                    Container(
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
                            
                          )
                        )
                      ],
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