class Item
{
  final String? imagePath;
  final String englishWord;
  final String japaneseWord;
  final String soundName;
  final String type;

  const Item({
    this.imagePath,
    required this.englishWord,
    required this.japaneseWord,
    required this.soundName,
    required this.type,
  });
}