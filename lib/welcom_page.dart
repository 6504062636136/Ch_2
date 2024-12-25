import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  String _output = ''; // Declare the _output variable
  final _textController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome Page5556666'),
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


              const SizedBox(height: 20), // Space between the two buttons
              Text(
                _output, // Display the updated output
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),

              ),
              TextField(
                controller: _textController,
                decoration: InputDecoration(
                  hintText:'Enter Name',
                  labelText:'Name ',
                ),
              ),

              ElevatedButton(
                onPressed: () {
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
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _output = 'Bye Bye'; // Update the _output variable
                  });
                  debugPrint('Pressed OK button');
                },
                child: const Text(
                  'OK',
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
