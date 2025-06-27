import 'package:flutter/material.dart';

class CustomVideoPlayerSection extends StatelessWidget {
  const CustomVideoPlayerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.network(
        "https://i.ytimg.com/vi/kffacxfA7G4/maxresdefault.jpg",
        height: 200,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}