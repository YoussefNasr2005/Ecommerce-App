import 'package:flutter/material.dart';

class Itemsdetails extends StatefulWidget {
  final dynamic items;
  const Itemsdetails({super.key, this.items});

  @override
  State<Itemsdetails> createState() => _Itemsdetails();
}

class _Itemsdetails extends State<Itemsdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const Drawer(),
      bottomNavigationBar: BottomNavigationBar(
          iconSize: 30.0,
          elevation: 10,
          selectedItemColor: Colors.deepOrange,
          selectedLabelStyle: const TextStyle(fontSize: 20),
          unselectedLabelStyle: const TextStyle(fontSize: 20),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "*",
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_bag_outlined,
                ),
                label: "*"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_2_outlined,
                ),
                label: "*"),
          ]),
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: const Row(
          children: [
            SizedBox(
              width: 25,
            ),
            Icon(
              Icons.shopping_bag_outlined,
              size: 40,
            ),
            Text(
              '  Ecommerce ',
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Jo',
              style: TextStyle(
                  color: Colors.orange,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 218, 218, 218),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 400,
            child: Padding(
                padding: const EdgeInsets.all(20),
                child: Image.asset(widget.items['photo'])),
          ),
          SizedBox(
            child: Text(
              widget.items['title'],
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            child: Text(
              widget.items['subtitle'],
              style: const TextStyle(
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            child: Text(
              widget.items['price'],
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'color:  ',
                style: TextStyle(fontSize: 27),
              ),
              Container(
                height: 22,
                width: 22,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.yellow)),
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                'Grey',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Container(
                height: 22,
                width: 22,
                decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                'black',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Container(
                height: 22,
                width: 22,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                'blue',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'size: ',
                style: TextStyle(fontSize: 27),
              ),
              Text(
                '40',
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
              Text(
                ' 35 33 30 28 25',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black87),
              ),
              onPressed: () {},
              child: const Text(
                'Add To Card',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ))
        ],
      ),
    );
  }
}
