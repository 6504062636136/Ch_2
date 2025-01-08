import 'package:flutter/material.dart';
import 'package:flutter_app/about_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Home> {
  String _output = ''; // Declare the _output variable
  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome Page'),
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
            mainAxisAlignment: MainAxisAlignment.center, // Center the children
            children: [
              Image.network(
                'https://stickershop.line-scdn.net/stickershop/v1/product/1475/LINEStorePC/main.png?v=1',
                width: 120,
              ),
              const SizedBox(height: 10), // Add spacing after the image
              const Text(
                'Hello, Welcome to Aom App',
                style: TextStyle(fontSize: 18), // Adjust the font size for better readability
              ),
              const SizedBox(height: 20), // Add some space between text and row

              Text(
                _output, // Display the updated output
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),

              TextField(
                controller: _textController,
                decoration: InputDecoration(
                  hintText: 'Enter Name',
                  labelText: 'Name ',
                ),
              ),
              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: _textController.text.isEmpty ? null : () {
                  String input = _textController.text;
                  setState(() {
                    _output = 'My name is $input'; // Update the _output variable
                  });
                  debugPrint('pressed button $input');
                },
                child: const Text(
                  'OK',
                  style: TextStyle(fontSize: 24),
                ),
              ),

              const SizedBox(height: 10), // Spacing between the two buttons

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AboutPage(),
                    ),
                  );
                },
                child: const Text(
                  'AboutPage',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              const SizedBox(height: 20), // Add space between the button and text
            ],
          ),
        ),
      ),
    );
  }
}
