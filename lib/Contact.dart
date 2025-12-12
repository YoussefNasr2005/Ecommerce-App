import 'package:flutter/material.dart';
import 'package:flutter_app/AboutUs.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Center(
            child: Text(
              'Contact Us Page',
              style: TextStyle(fontSize: 35),
            ),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed("HomePage");
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepOrangeAccent,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 15),
            ),
            child: const Text(
              'Go To Home Page (pushReplacementNamed)',
              style: TextStyle(fontSize: 20),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const AboutUs()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepOrange,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 15),
            ),
            child: const Text(
              'Go To About Page...',
              style: TextStyle(fontSize: 20),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => const AboutUs()),
                  (Route) => false);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepOrangeAccent,
              foregroundColor: Colors.white70,
            ),
            child: const Text(
              'Go To About Page (pushAndRemoveUntil)',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
