import 'package:flutter/material.dart';
import '../models/item.dart';
import '../components/list_item.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  final List<Item> phrases = const [
    Item(
      englishWord: 'Are you coming?',
      japaneseWord: 'Kimasu ka?',
      soundName: 'are_you_coming.wav',
      type: 'phrases',
    ),
    Item(
      englishWord: 'Don\'t forget to subscribe',
      japaneseWord: 'Koudoku wo wasurenaide kudasai',
      soundName: 'dont_forget_to_subscribe.wav',
      type: 'phrases',
    ),
    Item(
      englishWord: 'How are you feeling?',
      japaneseWord: 'Go kibun wa ikagadesu ka?',
      soundName: 'how_are_you_feeling.wav',
      type: 'phrases',
    ),
    Item(
      englishWord: 'I love anime',
      japaneseWord: 'Watashi wa anime ga daisuki desu',
      soundName: 'i_love_anime.wav',
      type: 'phrases',
    ),
    Item(
      englishWord: 'I love programming',
      japaneseWord: 'Watashi wa puroguramingu ga daisuki desu',
      soundName: 'i_love_programming.wav',
      type: 'phrases',
    ),
    Item(
      englishWord: 'Programming is easy',
      japaneseWord: 'Puroguramingu wa kantan desu',
      soundName: 'programming_is_easy.wav',
      type: 'phrases',
    ),
    Item(
      englishWord: 'What is your name?',
      japaneseWord: 'Onamae wa?',
      soundName: 'what_is_your_name.wav',
      type: 'phrases',
    ),
    Item(
      englishWord: 'Where are you going?',
      japaneseWord: 'Doko ni iku no?',
      soundName: 'where_are_you_going.wav',
      type: 'phrases',
    ),
    Item(
      englishWord: 'Yes, I\'m coming',
      japaneseWord: 'Hai, kimasu',
      soundName: 'yes_im_coming.wav',
      type: 'phrases',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Phrases'),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, index) {
          return ListItem(item: phrases[index], color: Colors.lightBlue);
        },
      ),
    );
  }
} 