import 'package:flutter/material.dart';
import 'package:flutter_app/about_page.dart';
import 'package:flutter_app/welcome_page.dart'; // Ensure the correct path to WelcomePage

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/', // The route to load first
      routes: {
        '/': (context) => const WelcomePage(title: 'Nav System'), // Correct the page here
        '/welcome_page': (context) => const WelcomePage(title: 'Nav System'), // Ensure it's properly routed
        '/about_page': (context) => const AboutPage(), // Navigate to AboutPage
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Color.fromARGB(255, 183, 223, 184), // Custom AppBar color
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        useMaterial3: true,
      ),
    );
  }
}
