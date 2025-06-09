import 'package:flutter/material.dart';

class CustomDropdown extends StatefulWidget {
  final String hint;
  final List<String> items;

  const CustomDropdown({super.key, required this.hint, required this.items});

  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          dropdownColor: Colors.grey[900],
          hint: Text(widget.hint, style: const TextStyle(color: Colors.white70)),
          value: selectedValue,
          icon: const Icon(Icons.arrow_drop_down_sharp, color: Colors.white60),
          items: widget.items.map((value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value, style: const TextStyle(color: Colors.white)),
            );
          }).toList(),
          onChanged: (value) {
            setState(() {
              selectedValue = value;
            });
          },
        ),
      ),
    );
  }
}
