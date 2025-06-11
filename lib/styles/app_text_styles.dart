import 'package:flutter/widgets.dart';
import 'package:koma/styles/app_colors.dart';

class AppTextStyles {
  static const TextStyle appname = TextStyle(
      fontSize: 48, fontWeight: FontWeight.w400, color: AppColors.primary);
      static const TextStyle subname = TextStyle(
      fontSize: 32, fontWeight: FontWeight.w400, color: AppColors.primary);

  static const TextStyle buttonText =
      TextStyle(fontSize: 16, fontWeight: FontWeight.w600);

      static const TextStyle loginText= TextStyle(
              decoration: TextDecoration.underline,
              fontSize: 12,
              fontWeight: FontWeight.w400
            );

             static const TextStyle smallText =
      TextStyle(fontSize: 16, fontWeight: FontWeight.w400);

              static const TextStyle emailText= TextStyle(
          
              fontSize: 14,
              fontWeight: FontWeight.w400
            );
}
