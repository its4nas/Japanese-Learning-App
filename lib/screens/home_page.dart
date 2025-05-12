import 'package:flutter/material.dart';
import '../components/category_item.dart';
import 'numbers_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 226, 245, 150),
      appBar: AppBar(
        title: const Text('Toku'),
      ),
      body: Column(
        children: [
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => const NumbersPage(),
              ));
            },
            text: "text",
            color: Color.fromARGB(255, 14, 94, 14),
          ),
          Category(
            onTap: () {
              print("Category 2 tapped");
            },
            text: "text2",
            color: Color.fromARGB(255, 14, 66, 94),
          ),
          Category(
            onTap: () {
              print("Category 3 tapped");
            },
            text: "text3",
            color: Color.fromARGB(255, 43, 14, 94),
          ),
          Category(
            onTap: () {
              print("Category 4 tapped");
            },
            text: "text4",
            color: Color.fromARGB(255, 94, 14, 82),
          ),
        ],
      ),
    );
  }
}
