import 'package:flutter/material.dart';
import 'package:koma/widgets/custom_dropdown.dart';

class DateDropdownPicker extends StatelessWidget {
  const DateDropdownPicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CustomDropdown(hint: 'Day', items: List.generate(31, (index) => '${index + 1}')),
        const SizedBox(width: 12),
        const CustomDropdown(hint: 'Month', items: [
          'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
          'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'
        ]),
        const SizedBox(width: 12),
         CustomDropdown(hint: 'Year', items: [
          for (int i = 2025; i >= 1950; i--) i.toString(),
        ]),
      ],
    );
  }
}

