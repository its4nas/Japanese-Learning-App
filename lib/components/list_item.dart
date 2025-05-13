import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import '../models/item.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key, required this.item, required this.color});

  final Item item;
  final Color color;

  String getSoundPath() {
    return 'assets/sounds/${item.type}/${item.soundName}';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: color,
      child: Row(
        children: [
          Container(
            color: const Color.fromARGB(255, 225, 202, 158),
            child: Image.asset(item.imagePath),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  item.englishWord,
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  item.japaneseWord,
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: IconButton(
            onPressed: () async {
    final player = AudioPlayer();
    try {
    if (item.soundName == null) {
    throw Exception("Sound name is null");
    }
    String assetPath = getSoundPath();
    print("Setting asset to: $assetPath");
    await player.setAsset(assetPath);
    print("Playing sound: ${item.soundName}");
    await player.play();
    } catch (ex) {
    print("Error: $ex");
    ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text("Could not play sound: $ex")),
    );
    }
    },
              icon: const Icon(Icons.play_arrow),
              color: Colors.white,
              iconSize: 30,
            ),
          ),
        ],
      ),
    );
  }
}