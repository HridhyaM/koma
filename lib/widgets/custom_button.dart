import 'package:flutter/material.dart';
import 'package:koma/styles/app_text_styles.dart';

class CustomButton extends StatelessWidget {
    final Widget child;
  final Color? bgcolor;
  final VoidCallback onTap;
  const CustomButton(
      {super.key,
      required this.child,
       this.bgcolor,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      onTap: onTap,
      child: Container(
          height: 59,
          width: 350,
          decoration: BoxDecoration(
              color: bgcolor, borderRadius: BorderRadius.circular(10)),
          alignment: Alignment.center,
          child:child),
    );
  }
}
