import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Category extends StatelessWidget {
  String text;
  Color color;
  VoidCallback onTap;

   Category({required this.text, required this.color, required this.onTap});
    

  @override
  Widget build(BuildContext context) {
    return
        GestureDetector(
          onTap: onTap,
          child: Container(
            height: 60,
            width: double.infinity,
            color: color,
            padding: const EdgeInsets.symmetric(horizontal: 24),
            alignment: Alignment.centerLeft,
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            ),
        );
  }
}