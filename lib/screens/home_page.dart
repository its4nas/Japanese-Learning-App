import 'package:flutter/material.dart';
import '../components/category_item.dart';
import 'numbers_page.dart';
import 'family_members_page.dart';

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
            text: "Numbers",
            color: Color.fromARGB(255, 14, 94, 14),
          ),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => const FamilyMembersPage(),
              ));
            },
            text: "Family Members",
            color: Color.fromARGB(255, 14, 66, 94),
          ),
          Category(
            onTap: () {
              print("Category 3 tapped");
            },
            text: "Colors",
            color: Color.fromARGB(255, 43, 14, 94),
          ),
          Category(
            onTap: () {
              print("Category 4 tapped");
            },
            text: "Phrases",
            color: Color.fromARGB(255, 94, 14, 82),
          ),
        ],
      ),
    );
  }
}
