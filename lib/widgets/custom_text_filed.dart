import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:koma/styles/app_text_styles.dart';

class CustomTextFiled extends StatelessWidget {
  final String hintText;
  final Widget ? icon;
  const CustomTextFiled({super.key, required this.hintText, this.icon});

  @override
  Widget build(BuildContext context) {
    return TextField(
              decoration: InputDecoration(
           filled: true,
           suffixIcon: icon,
                hintText: hintText,
                helperStyle: AppTextStyles.buttonText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none
              )
              ),
              
             );
  }
}