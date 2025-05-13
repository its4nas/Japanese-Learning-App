import 'package:flutter/material.dart';
import '../models/item.dart';
import '../components/list_item.dart';


class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  final List<Item> numbers = const [
    Item(
      englishWord: 'one',
      japaneseWord: 'ichi',
      imagePath: 'assets/images/numbers/number_one.png',
      soundName: 'number_one_sound.mp3',
      type: 'numbers',
    ),
    Item(
      englishWord: 'two',
      japaneseWord: 'ni',
      imagePath: 'assets/images/numbers/number_two.png',
      soundName: 'number_two_sound.mp3',
      type: 'numbers',
    ),
    Item(
      englishWord: 'three',
      japaneseWord: 'san',
      imagePath: 'assets/images/numbers/number_three.png',
      soundName: 'number_three_sound.mp3',
      type: 'numbers',
    ),
    Item(
      englishWord: 'four',
      japaneseWord: 'shi',
      imagePath: 'assets/images/numbers/number_four.png',
      soundName: 'number_four_sound.mp3',
      type: 'numbers',
    ),
    Item(
      englishWord: 'five',
      japaneseWord: 'go',
      imagePath: 'assets/images/numbers/number_five.png',
      soundName: 'number_five_sound.mp3',
      type: 'numbers',
    ),
    Item(
      englishWord: 'six',
      japaneseWord: 'roku',
      imagePath: 'assets/images/numbers/number_six.png',
      soundName: 'number_six_sound.mp3',
      type: 'numbers',
    ),
    Item(
      englishWord: 'seven',
      japaneseWord: 'nana',
      imagePath: 'assets/images/numbers/number_seven.png',
      soundName: 'number_seven_sound.mp3',
      type: 'numbers',
    ),
    Item(
      englishWord: 'eight',
      japaneseWord: 'hachi',
      imagePath: 'assets/images/numbers/number_eight.png',
      soundName: 'number_eight_sound.mp3',
      type: 'numbers',
    ),
    Item(
      englishWord: 'nine',
      japaneseWord: 'kyuu',
      imagePath: 'assets/images/numbers/number_nine.png',
      soundName: 'number_nine_sound.mp3',
      type: 'numbers',
    ),
    Item(
      englishWord: 'ten',
      japaneseWord: 'juu',
      imagePath: 'assets/images/numbers/number_ten.png',
      soundName: 'number_ten_sound.mp3',
      type: 'numbers',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Numbers'),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return ListItem(item: numbers[index], color: Colors.orange);
        },
      ),
    );
  }
}
