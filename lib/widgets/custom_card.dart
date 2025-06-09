import 'package:flutter/widgets.dart';
import 'package:koma/styles/app_colors.dart';

class CustomCard extends StatelessWidget {
  final String text;
  const CustomCard({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return  Container(
              height: 40,
              width: 80,
              decoration: BoxDecoration(
                color: AppColors.buttonColor,
                borderRadius: BorderRadius.circular(10),
                
              ),
              alignment: Alignment.center,
              child: Text(text),
            );
  }
}