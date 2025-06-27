import 'package:flutter/material.dart';

class CustomSearchInput extends StatelessWidget {
  const CustomSearchInput({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(12),
      child: TextField(
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          hintText: "Search here",
          hintStyle: TextStyle(color: Colors.white54),
          filled: true,
          fillColor: Color(0xFF2C2C2C),
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}