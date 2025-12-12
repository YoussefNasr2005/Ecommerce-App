import 'package:flutter/material.dart';
import 'package:flutter_app/Contact.dart';
import 'package:flutter_app/HomePage.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
      ),
      body: ListView(
        children: [
          const Center(
            child: Text(
              'About Us Page',
              style: TextStyle(fontSize: 35),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop(
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepOrangeAccent,
              foregroundColor: Colors.white70,
            ),
            child: const Text(
              'Go To Home Page...',
              style: TextStyle(fontSize: 20),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const Contact()));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepOrangeAccent,
              foregroundColor: Colors.white70,
            ),
            child: const Text(
              'Go To Contact Page...',
              style: TextStyle(fontSize: 20),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => const HomePage()),
                  (Route) => false);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepOrangeAccent,
              foregroundColor: Colors.white70,
            ),
            child: const Text(
              'Go To Home Page (pushAndRemoveUntil)',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
