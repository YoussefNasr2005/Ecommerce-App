import 'package:flutter/material.dart';
import 'package:flutter_app/AboutUs.dart';
import 'package:flutter_app/HomePage.dart';
import 'package:flutter_app/Contact.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int variable = 0;
  List<Widget> listWidget = const [
    Text(
      'Home Page',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 30),
    ),
    Text(
      'Favourite Page',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 30),
    ),
    Text(
      'Settings Page',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 30),
    ),
  ];
  List<String> pagesName = [
    "assets/images/img_p.jpg",
    "assets/images/Futurecar.jpeg",
    "assets/images/car.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      routes: {
        "home": (context) => const HomePage(),
        "about": (context) => const AboutUs(),
        "contact": (context) => const Contact(),
      },
    );
  }
}
