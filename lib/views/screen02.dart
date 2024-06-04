import 'package:flutter/material.dart';
import 'package:hw8/views/screen_page_widget.dart';

class Screen02 extends StatelessWidget {
  Screen02({super.key});
  final List<Map<String, dynamic>> items = [
    {"image": "assets/images/img1.png", "text": "Zinger Burger", "price": "2"},
    {"image": "assets/images/img2.png", "text": "Roll Paratha", "price": "4"},
    {"image": "assets/images/img3.png", "text": "Burger", "price": "3"},
    {"image": "assets/images/img4.png", "text": "Sandwich", "price": "6"},
    {"image": "assets/images/img5.png", "text": "Pizza roll", "price": "10"},
    {"image": "assets/images/img6.png", "text": "Roll Paratha", "price": "7"}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const Text(
              'Find Your Favourite Food',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Search for food',
                filled: true,
                fillColor: Colors.grey[200],
                prefixIcon: const Icon(
                  Icons.search,
                  size: 20,
                  color: Color(0xffed337f),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 20.0,
                  horizontal: 16.0,
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            // todo food cards
            FoodItem(items: items),
          ],
        ),
      ),
    ));
  }
}

class FoodItem extends StatelessWidget {
  FoodItem({
    super.key,
    required this.items,
  });

  // todo
  final List<Map<String, dynamic>> items;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 700,
      width: double.infinity,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
          mainAxisExtent: 200,
        ),
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: 136.08,
            height: 69,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Color(0xffffeeda),
            ),
            // todo move to ScreenPageWidgetFromClassInfo
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ScreenPageWidgetFromClassInfo(),
                    ));
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "${items.elementAt(index)["image"]}",
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "${items.elementAt(index)["text"]}",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "\$${items.elementAt(index)["price"]}",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
