import 'package:flutter/material.dart';
import 'package:flutter_app/itemDetails.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List categories = [
    {
      "CategorieName": Icons.phone_android_outlined,
      "title": "Phones",
    },
    {
      "CategorieName": Icons.laptop,
      "title": "Laptops",
    },
    {
      "CategorieName": Icons.bike_scooter,
      "title": "Bikes",
    },
    {
      "CategorieName": Icons.card_giftcard_rounded,
      "title": "Gifts",
    },
    {
      "CategorieName": Icons.book_sharp,
      "title": "Learning",
    },
    {
      "CategorieName": Icons.bed_outlined,
      "title": "Furnitures",
    },
    {
      "CategorieName": Icons.theater_comedy_sharp,
      "title": "Entertainment",
    },
  ];

  final List items = [
    {
      "photo": "assets/images/HandWatch.png",
      "title": "Hand Watch",
      "subtitle": "Classic silver watch",
      "price": "\$120",
    },
    {
      "photo": "assets/images/Furniture.png",
      "title": "Furnitures",
      "subtitle": "Comfortable Furniture",
      "price": "\$600",
    },
    {
      "photo": "assets/images/Gifts.png",
      "title": "Gifts",
      "subtitle": "Special gift box",
      "price": "\$50",
    },
    {
      "photo": "assets/images/Headphone.png",
      "title": "Head Phone",
      "subtitle": "Gaming Headphone",
      "price": "\$80",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        backgroundColor: Colors.deepOrange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 30,
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      prefixIcon: const Icon(Icons.search),
                      fillColor: const Color.fromARGB(255, 205, 200, 200),
                      filled: true,
                      hintText: "Search",
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Icon(
                  Icons.menu,
                  size: 40,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Categories",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: SizedBox(
                height: 100,
                child: ListView.builder(
                    itemCount: categories.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, i) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Column(
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  color: i == 2
                                      ? const Color.fromARGB(255, 255, 123, 0)
                                      : const Color.fromARGB(
                                          255, 187, 182, 182),
                                  borderRadius: BorderRadius.circular(80)),
                              child: Icon(
                                categories[i]['CategorieName'],
                                size: 40,
                                color: i == 2 ? Colors.white70 : Colors.black87,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(categories[i]["title"])
                          ],
                        ),
                      );
                    }),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Best Selling",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: GridView.builder(
                  itemCount: items.length,
                  padding: const EdgeInsets.all(8),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: .76,
                  ),
                  itemBuilder: (context, i) {
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                Itemsdetails(items: items[i])));
                      },
                      child: Card(
                          color: const Color.fromARGB(255, 206, 203, 203),
                          child: Column(
                            children: [
                              SizedBox(
                                width: 300,
                                child: Image.asset(
                                  items[i]["photo"],
                                  fit: BoxFit.fill,
                                  height: 140,
                                ),
                              ),
                              Text(
                                items[i]["title"],
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                textAlign: TextAlign.left,
                                items[i]["subtitle"],
                                style: const TextStyle(fontSize: 15),
                              ),
                              Text(items[i]["price"],
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 255, 123, 0),
                                      fontWeight: FontWeight.bold)),
                            ],
                          )),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
