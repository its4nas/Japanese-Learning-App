import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import '../models/number.dart';

class NumberItem extends StatelessWidget {
  const NumberItem({super.key, required this.number});

  final Number number;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Colors.orange,
      child: Row(
        children: [
          Container(
            color: const Color.fromARGB(255, 225, 202, 158),
            child: Image.asset(number.imagePath),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.englishWord,
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  number.japaneseWord,
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
    if (number.soundName == null) {
    throw Exception("Sound name is null");
    }
    String assetPath = 'assets/sounds/numbers/${number.soundName}';
    print("Setting asset to: $assetPath");
    await player.setAsset(assetPath);
    print("Playing sound: ${number.soundName}");
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