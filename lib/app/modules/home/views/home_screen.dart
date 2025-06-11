import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:koma/app/routes/app_routes.dart';
import 'package:koma/styles/app_colors.dart';
import 'package:koma/styles/app_padding.dart';
import 'package:koma/styles/app_text_styles.dart';
import 'package:koma/widgets/custom_button.dart';
import 'package:koma/widgets/custom_text_filed.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("KOMA", style: AppTextStyles.appname),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.menu,color: AppColors.iconColors,))
        ],
      ),

      body: Padding(
        padding: AppPadding.screenPadding,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              SizedBox(
                width: double.infinity,
                child: CustomButton(
                  bgcolor: AppColors.primary,
                  child:Padding(
                    padding: AppPadding.screenPadding,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("New Room"),
                        Icon(Icons.add)
                      ],
                    ),
                  ), onTap: (){}),
              ),
                SizedBox(
                  height: 30,
                ),
              Center(
                child:  Container(

  width: 370,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: AppColors.containercolor,
  ),
  child: Padding(
    padding:AppPadding.screenPadding,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Image.asset(
            'assets/images/group_img.png',
            height: 200,
           
          ),
        ),
        const SizedBox(height: 20), // spacing between image and text
        const Text(
          'Enter Secret Code to Join Your Team',
          style: AppTextStyles.emailText,
          textAlign: TextAlign.start,
         
        ),
SizedBox(
  height: 20,
),
        CustomTextFiled(hintText: "Paste code here",),
        SizedBox(
  height: 20,
),

        CustomButton(
          bgcolor: AppColors.secondary,
          child: Text('Join the team',style: AppTextStyles.buttonText,), onTap: (){
            Get.toNamed(AppRoutes.roomlist);
          })
      ],
    ),
  ),
),

              )
            ],
          ),
        ),
      ),
      
    );
  }
}