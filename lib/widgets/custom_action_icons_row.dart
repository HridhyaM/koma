import 'package:flutter/material.dart';

class CustomActionIconsRow extends StatelessWidget {
  const CustomActionIconsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(Icons.search, color: Colors.white),
          Icon(Icons.chat_bubble_outline, color: Colors.white),
          Icon(Icons.video_call, color: Colors.white),
          Icon(Icons.mic, color: Colors.white),
        ],
      ),
    );
  }
}