import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:koma/app/routes/app_routes.dart';
import 'package:koma/styles/app_colors.dart';
import 'package:koma/styles/app_padding.dart';
import 'package:koma/styles/app_text_styles.dart';
import 'package:koma/widgets/custom_button.dart';
import 'package:koma/widgets/custom_text_filed.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: AppPadding.screenPadding,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text("KOMA", style: AppTextStyles.appname),
              ),
              SizedBox(
                height: 100,
              ),
           CustomTextFiled(hintText:"Email" ),
           SizedBox(
            height: 10,
           ),
           CustomTextFiled(hintText:"Password", ),
           SizedBox(
            height: 30,
           ),
           SizedBox(
            width: double.infinity,
             child: CustomButton(
              bgcolor: AppColors.primary,
              child: Text('Login',style: AppTextStyles.buttonText,), onTap: (){
                    Get.toNamed(AppRoutes.datescreen);
              }),
               
           ),
            SizedBox(
            height: 20,
           ),
           CustomButton(child: Text("Forgot Password ?",style: AppTextStyles.loginText,), onTap: (){
            Get.toNamed(AppRoutes.forgotpassword);
           }),
          
           SizedBox(
            width: double.infinity,
             child: CustomButton(
              bgcolor: AppColors.buttonColor,
              child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/google_img.png'),
                Text('Continue With Google ',style: AppTextStyles.buttonText,)
              ],
             ), onTap: (){
          
             }),
           )
            ],
          ),
        ),
      ),
    );
  }
}
