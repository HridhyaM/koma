import 'package:flutter/material.dart';

class CustomMediaTabbar extends StatelessWidget {
  const CustomMediaTabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return const TabBar(
      labelColor: Colors.white,
      unselectedLabelColor: Colors.grey,
      indicatorColor: Colors.white,
      tabs: [
        Tab(text: "Search"),
        Tab(text: "Chat"),
        Tab(text: "Meet"),
      ],
    );
  }
}