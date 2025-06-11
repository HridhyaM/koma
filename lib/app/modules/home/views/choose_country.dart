import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:koma/app/routes/app_routes.dart';
import 'package:koma/styles/app_colors.dart';
import 'package:koma/styles/app_padding.dart';
import 'package:koma/widgets/custom_button.dart';
import 'package:koma/widgets/custom_dropdown.dart';

class ChooseCountry extends StatelessWidget {
  const ChooseCountry({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar()
      ,
      body: Padding(
        padding:AppPadding.screenPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
        
            Text('Choose your country from the list.'),
            SizedBox(
              height: 50,
            ),
            CustomDropdown(hint: "Select Country", items: ["india",]),
            SizedBox(
              height: 40,
            ),
            SizedBox(
              width: double.infinity,
              child: CustomButton(
                bgcolor: AppColors.primary,
                child: Text("Next"), onTap: (){
                  Get.toNamed(AppRoutes.Homescreen);
                }),
            )
          ],
        ),
      ),
    );
  }
}