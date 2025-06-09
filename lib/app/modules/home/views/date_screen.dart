import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:koma/app/routes/app_routes.dart';
import 'package:koma/styles/app_colors.dart';
import 'package:koma/styles/app_padding.dart';
import 'package:koma/styles/app_text_styles.dart';
import 'package:koma/widgets/custom_button.dart';
import 'package:koma/widgets/date_drop_down_picker.dart';

class DateScreen extends StatelessWidget {
  const DateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: AppPadding.screenPadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('When’s your birthday?'),
            SizedBox(
              height: 40,
            ),
            DateDropdownPicker(),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              child: CustomButton(
                bgcolor: AppColors.primary,
                child: Text("Next",style: AppTextStyles.buttonText,), onTap: (){
                  Get.toNamed(AppRoutes.gender);
                }),
            )
          ],
        ),
      ),
    );
  }
}