import 'package:flutter/material.dart';
import 'package:koma/styles/app_padding.dart';

class CustomMediaHeaders extends StatelessWidget {
  const CustomMediaHeaders({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppPadding.screenPadding,
      
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: const [
              Icon(Icons.ondemand_video, color: Colors.red),
              SizedBox(width: 8),
              Text("Youtube", style: TextStyle(color: Colors.white)),
            ],
          ),
          const Icon(Icons.keyboard_arrow_down, color: Colors.white),
        ],
      ),
    );
  }
}
