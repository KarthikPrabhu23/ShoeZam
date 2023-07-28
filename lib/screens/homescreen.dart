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
            radius: 14,
            backgroundColor: Colors.lightBlue,
          ),
          CircleAvatar(
            radius: 14,
            backgroundColor: Colors.lightBlue,
          )
        ],
      ),
    );
  }
}