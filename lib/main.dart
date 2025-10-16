import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 10,
          title: Text('Facebook'),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              size: 35,
              color: const Color.fromARGB(255, 58, 79, 232),
            ),
          ),

          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 33,
                color: Color.fromARGB(255, 58, 79, 232),
              ),
            ),

            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.message,
                size: 33,
                color: Color.fromARGB(255, 58, 79, 232),
              ),
            ),
          ],
        ),
        body: Center(
          child: Text("Welcome Youssef!👋", style: TextStyle(fontSize: 30)),
        ),
      ),
    );
  }
}
