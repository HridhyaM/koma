import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:koma/app/routes/app_routes.dart';
import 'package:koma/styles/app_colors.dart';
import 'package:koma/styles/app_padding.dart';
import 'package:koma/styles/app_text_styles.dart';
import 'package:koma/widgets/custom_button.dart';
import 'package:koma/widgets/custom_text_filed.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
     
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
         
            Get.back();
          },
        ),
      ),
      body: Padding(
        padding:AppPadding.screenPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Enter Your OTP",style: AppTextStyles.emailText,),
     SizedBox(
      height: 20,
     ),
             CustomTextFiled(hintText: "Enter minimum 6 digits",icon: Icon(Icons.visibility),),
             SizedBox(
              height: 60,
             ),
             SizedBox(
              width: double.infinity,
               child: CustomButton(
                
                bgcolor:AppColors.primary,
                child: Text("Next",style: AppTextStyles.buttonText,), onTap: (){
                  Get.toNamed(AppRoutes.NewPassword);
                }),
             )
          ],
        ),
      ),
    );
  }
}