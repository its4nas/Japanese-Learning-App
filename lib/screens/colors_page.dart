import 'package:flutter/material.dart';
import '../models/item.dart';
import '../components/list_item.dart';


class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  final List<Item> colors = const [
    Item(
      englishWord: 'black',
      japaneseWord: 'Burakku',
      imagePath: 'assets/images/colors/color_black.png',
      soundName: 'black.wav',
      type: 'colors',
    ),
    Item(
      englishWord: 'brown',
      japaneseWord: 'Chairo',
      imagePath: 'assets/images/colors/color_brown.png',
      soundName: 'brown.wav',
      type: 'colors',
    ),
    Item(
      englishWord: 'dusty yellow',
      japaneseWord: 'Hokori ppoi Kiiro',
      imagePath: 'assets/images/colors/color_dusty_yellow.png',
      soundName: 'dusty_yellow.wav',
      type: 'colors',
    ),
    Item(
      englishWord: 'gray',
      japaneseWord: 'Kuro',
      imagePath: 'assets/images/colors/color_gray.png',
      soundName: 'gray.wav',
      type: 'colors',
    ),
    Item(
      englishWord: 'green',
      japaneseWord: 'Midori',
      imagePath: 'assets/images/colors/color_green.png',
      soundName: 'green.wav',
      type: 'colors',
    ),
    Item(
      englishWord: 'red',
      japaneseWord: 'Aka',
      imagePath: 'assets/images/colors/color_red.png',
      soundName: 'red.wav',
      type: 'colors',
    ),
    Item(
      englishWord: 'white',
      japaneseWord: 'Shiro',
      imagePath: 'assets/images/colors/color_white.png',
      soundName: 'white.wav',
      type: 'colors',
    ),
    Item(
      englishWord: 'yellow',
      japaneseWord: 'Kiiro',
      imagePath: 'assets/images/colors/yellow.png',
      soundName: 'yellow.wav',
      type: 'colors',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Numbers'),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return ListItem(item: colors[index], color: Colors.lightBlueAccent);
        },
      ),
    );
  }
}
