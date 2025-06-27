import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:koma/app/routes/app_routes.dart';
import 'package:koma/styles/app_colors.dart';
import 'package:koma/styles/app_padding.dart';
import 'package:koma/styles/app_text_styles.dart';
import 'package:koma/widgets/custom_appbar.dart';
import 'package:koma/widgets/custom_button.dart';
import 'package:koma/widgets/custom_text_filed.dart';
import 'package:koma/widgets/custom_toggle_button.dart';

class CreateRoom extends StatelessWidget {
  const CreateRoom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: "KOMA", ontap: (){}),
      body: Padding(
        padding: AppPadding.screenPadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Text("Create Public Room",textAlign: TextAlign.start,style: AppTextStyles.emailText),
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextFiled(hintText: "Room name",),
               SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Only Admin can control',style: 
            AppTextStyles. buttonText),
              CustomToggleButton()
              ],
            ),
               SizedBox(
              height: 60,
            ),
            SizedBox(
              width: double.infinity,
              child: CustomButton(
                bgcolor: AppColors.primary,
                child: Text("Start"), onTap: (){
                  Get.toNamed(AppRoutes.alert);
                }),
            )
          ],
        ),
      ),
    );
  }
}