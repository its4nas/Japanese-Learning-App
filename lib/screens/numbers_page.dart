import 'package:flutter/material.dart';

import '../components/number_item.dart';
import '../models/number.dart';


class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  final List<Number> numbers = const [
    Number(
      englishWord: 'one',
      japaneseWord: 'ichi',
      imagePath: 'assets/images/numbers/number_one.png',
      soundName: 'number_one_sound.mp3',
    ),
    Number(
      englishWord: 'two',
      japaneseWord: 'ni',
      imagePath: 'assets/images/numbers/number_two.png',
      soundName: 'number_two_sound.mp3',
    ),
    Number(
      englishWord: 'three',
      japaneseWord: 'san',
      imagePath: 'assets/images/numbers/number_three.png',
      soundName: 'number_three_sound.mp3',
    ),
    Number(
      englishWord: 'four',
      japaneseWord: 'shi',
      imagePath: 'assets/images/numbers/number_four.png',
      soundName: 'number_four_sound.mp3',
    ),
    Number(
      englishWord: 'five',
      japaneseWord: 'go',
      imagePath: 'assets/images/numbers/number_five.png',
      soundName: 'number_five_sound.mp3',
    ),
    Number(
      englishWord: 'six',
      japaneseWord: 'roku',
      imagePath: 'assets/images/numbers/number_six.png',
      soundName: 'number_six_sound.mp3',
    ),
    Number(
      englishWord: 'seven',
      japaneseWord: 'nana',
      imagePath: 'assets/images/numbers/number_seven.png',
      soundName: 'number_seven_sound.mp3',
    ),
    Number(
      englishWord: 'eight',
      japaneseWord: 'hachi',
      imagePath: 'assets/images/numbers/number_eight.png',
      soundName: 'number_eight_sound.mp3',
    ),
    Number(
      englishWord: 'nine',
      japaneseWord: 'kyuu',
      imagePath: 'assets/images/numbers/number_nine.png',
      soundName: 'number_nine_sound.mp3',
    ),
    Number(
      englishWord: 'ten',
      japaneseWord: 'juu',
      imagePath: 'assets/images/numbers/number_ten.png',
      soundName: 'number_ten_sound.mp3',
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
          return NumberItem(number: numbers[index]);
        },
      ),
    );
  }
}
