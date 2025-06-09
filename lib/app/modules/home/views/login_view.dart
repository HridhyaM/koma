import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:koma/app/routes/app_routes.dart';
import 'package:koma/styles/app_colors.dart';
import 'package:koma/styles/app_padding.dart';
import 'package:koma/styles/app_text_styles.dart';
import 'package:koma/widgets/custom_button.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: AppPadding.screenPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text("KOMA", style: AppTextStyles.appname),
            ),
            SizedBox(
              height: 200,
            ),
            CustomButton(
              bgcolor: AppColors.primary,
              onTap: () {
               Get.toNamed(AppRoutes.email);
              },
              child: Text(
                'Create New Account',
                style: AppTextStyles.buttonText,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CustomButton(
              bgcolor: AppColors.buttonColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/google_img.png'),
                  Text(
                    "Continue With Google",
                    style: AppTextStyles.buttonText,
                  )
                ],
              ),
              onTap: () {
                print("Signed Successfully");
              },
            ),
            CustomButton(
                child: Text(
                  "Login",
                  style: AppTextStyles.loginText,
                ),
                onTap: () {
                  Get.toNamed(AppRoutes.loginpage);
                  print("login sucessful");
                }
                )
          ],
        ),
      ),
    );
  }
}
