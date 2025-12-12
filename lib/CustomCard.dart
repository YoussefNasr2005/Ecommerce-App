import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String name;
  final String email;
  final String date;
  final String imgName;
  const CustomListTile(
      {super.key,
      required this.name,
      required this.email,
      required this.date,
      required this.imgName});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.lightGreen,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            SizedBox(
              height: 70,
              width: 70,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(70),
                child: Image.asset("assets/images/$imgName", fit: BoxFit.cover),
              ),
            ),
            Expanded(
              child: ListTile(
                title: Text(name),
                subtitle: Text(email),
                trailing: Text(date),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
