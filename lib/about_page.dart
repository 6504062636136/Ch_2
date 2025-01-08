import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_app/Display_page.dart';
import 'package:flutter_app/welcome_page.dart';
class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
    appBar: AppBar(
    title: const Text('CarCareButnotme App'),
    leading: IconButton(
    icon: const Icon(Icons.menu),
    onPressed: () {
    debugPrint('Menu button pressed');
    },
    ),
    ),
    body: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Center(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
    Image.network(
    'https://stickershop.line-scdn.net/stickershop/v1/product/1475/LINEStorePC/main.png?v=1',
    width: 120,
    ),
    const Text('Order is completed'),
    const Text('Thank u, We Love U so Much'),
    const TextField(
    decoration: InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'User Name',
    hintText: 'Enter Your Name',
    ),
    ),
    const SizedBox(height: 10),
    const TextField(
    decoration: InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'Password',
    hintText: 'Enter Your Password',
    ),
    ),
    const SizedBox(height: 10),

    Container(
    decoration: const BoxDecoration(
    color: Colors.blue,
    borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    alignment: Alignment.centerLeft,
    padding:
    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    child: const Text(
    'History:',
    style: TextStyle(fontSize: 20, color: Colors.white),
    ),
    ),

    const SizedBox(height: 20),

    // Correct Row structure
    const Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Icon(Icons.ev_station), // Icon added inside Row
    Expanded(
    child: Text('Charging Date-Time',
    style: TextStyle(fontSize: 20))),
    ],
    ),

    Row(
    children: [
    IconButton(
    icon: const Icon(Icons.favorite_border),
    onPressed: () {
    debugPrint('Leading icon pressed');
    },
    ),
    ],
    ),

    Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
    const Icon(
    Icons.send,
    size: 20,
    ),
    const SizedBox(width: 20),
    ElevatedButton(
    onPressed: () {
    debugPrint('Pressed button');
    },
    child: const Text(
    'Submit',
    style: TextStyle(fontSize: 20),
    ),
    ),
    ],
    ),
      ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context)=> WelcomePage(),
            ),
          );
        },
        child: const Text(
          'WelcomePage',
          style: TextStyle(fontSize: 24),
        ),
      ),

      ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context)=> DisplayPage(),
            ),
          );
        },
        child: const Text(
          'DisplayPage',
          style: TextStyle(fontSize: 24),
        ),
      ),
    // Card containing Text and Image inside Column
    Card(
    color: Colors.lightBlue[100],
    child: Padding(
    padding: const EdgeInsets.symmetric(
    vertical: 20, horizontal: 80),
    child: Column(
    mainAxisSize: MainAxisSize.min,
    children: [
    const Text('3000 THB', style: TextStyle(fontSize: 24)),
    const SizedBox(height: 10),
    Image.network(
    'https://chewvalley-animalpark.co.uk/wp-content/uploads/2023/09/Shetland-Pony.webp',
    width: 120,
    ),
    ],
    ),
    ),
    ),
    const SizedBox(height: 14),
    ],
    ),
    ),
    ),
    floatingActionButton: FloatingActionButton(
    onPressed: () {
    debugPrint('Shopping cart button pressed');
    },
    child: const Icon(Icons.shopping_cart),
    ),
    );
  }
}
