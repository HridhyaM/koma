import 'package:flutter/material.dart';

class CustomVideoListSection extends StatelessWidget {
  const CustomVideoListSection({super.key});

  @override
  Widget build(BuildContext context) {
    final videos = [
      {
        'title': 'Justin Bieber - Baby ft. Ludacris',
        'artist': 'Justin Bieber',
        'thumb': 'https://img.youtube.com/vi/kffacxfA7G4/0.jpg',
      },
      {
        'title': 'Lady Gaga, Bruno Mars - Die With A Smile ...',
        'artist': 'Lady Gaga',
        'thumb': 'https://img.youtube.com/vi/CevxZvSJLk8/0.jpg',
      },
      {
        'title': 'Lady Gaga, Bruno Mars - Die With A Smile ...',
        'artist': 'Lady Gaga',
        'thumb': 'https://img.youtube.com/vi/CevxZvSJLk8/0.jpg',
      },
      {
        'title': 'Lady Gaga, Bruno Mars - Die With A Smile ...',
        'artist': 'Lady Gaga',
        'thumb': 'https://img.youtube.com/vi/CevxZvSJLk8/0.jpg',
      },
    ];

    return SizedBox(
      height: 500,
      child: ListView.builder(
        itemCount: videos.length,
        itemBuilder: (context, index) {
          final video = videos[index];
          return ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 12),
            leading: Image.network(video['thumb']!, width: 60, fit: BoxFit.cover),
            title: Text(video['title']!, style: const TextStyle(color: Colors.white)),
            subtitle: Text(video['artist']!, style: const TextStyle(color: Colors.white70)),
          );
        },
      ),
    );
  }
}