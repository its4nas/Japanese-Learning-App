import 'package:flutter/material.dart';
import '../models/item.dart';
import '../components/list_item.dart';


class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});

  final List<Item> familyMembers = const [
    Item(
      englishWord: 'father',
      japaneseWord: 'okaasan',
      imagePath: 'assets/images/family_members/family_father.png',
      soundName: 'father.wav',
      type: 'family_members',
    ),
    Item(
      englishWord: 'mother',
      japaneseWord: 'oyako',
      imagePath: 'assets/images/family_members/family_mother.png',
      soundName: 'mother.wav',
      type: 'family_members',
    ),
    Item(
      englishWord: 'grandfather',
      japaneseWord: 'otousan',
      imagePath: 'assets/images/family_members/family_grandfather.png',
      soundName: 'grand_father.wav',
      type: 'family_members',
    ),
    Item(
      englishWord: 'grandmother',
      japaneseWord: 'oyase',
      imagePath: 'assets/images/family_members/family_grandmother.png',
      soundName: 'grand_mother.wav',
      type: 'family_members',
    ),
    Item(
      englishWord: 'son',
      japaneseWord: 'musume',
      imagePath: 'assets/images/family_members/family_son.png',
      soundName: 'son.wav',
      type: 'family_members',
    ),
    Item(
      englishWord: 'daughter',
      japaneseWord: 'musume',
      imagePath: 'assets/images/family_members/family_daughter.png',
      soundName: 'daughter.wav',
      type: 'family_members',
    ),
    Item(
      englishWord: 'older brother',
      japaneseWord: 'nana',
      imagePath: 'assets/images/family_members/family_older_brother.png',
      soundName: 'older_bother.wav',
      type: 'family_members',
    ),
    Item(
      englishWord: 'older sister',
      japaneseWord: 'ane',
      imagePath: 'assets/images/family_members/family_older_sister.png',
      soundName: 'older_sister.wav',
      type: 'family_members',
    ),
    Item(
      englishWord: 'younger brother',
      japaneseWord: 'kodomo',
      imagePath: 'assets/images/family_members/family_younger_brother.png',
      soundName: 'younger_brohter.wav',
      type: 'family_members',
    ),
    Item(
      englishWord: 'younger sister',
      japaneseWord: 'kodomo',
      imagePath: 'assets/images/family_members/family_younger_sister.png',
      soundName: 'younger_sister.wav',
      type: 'family_members',
    ),
    
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Family Members'),
      ),
      body: ListView.builder(
        itemCount: familyMembers.length,
        itemBuilder: (context, index) {
          return ListItem(item: familyMembers[index], color: Colors.greenAccent);
        },
      ),
    );
  }
}
