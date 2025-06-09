import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:koma/app/routes/app_routes.dart';
import 'package:koma/styles/app_colors.dart';
import 'package:koma/styles/app_padding.dart';
import 'package:koma/widgets/custom_button.dart';
import 'package:koma/widgets/custom_card.dart';
import 'package:koma/widgets/custom_dropdown.dart';

class GenderSelection extends StatelessWidget {
  const GenderSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding:AppPadding.screenPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Select your gender.'),
            SizedBox(
              height: 50,
            ),
           Row(
          mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
             children: [
               CustomCard(text: "Male",),
           
                CustomCard(text: "Female",),
                              CustomCard(text: "Other",),

                           
             ],
           ),
           SizedBox(
            height: 30,
           ),
              SizedBox(
                width: double.infinity,
                child: CustomButton(
                  bgcolor: AppColors.primary,
                  child: Text("Next"), onTap: (){
                    Get.toNamed(AppRoutes.ChooseCountry);
                  }),
              )
          
          ],
        ),
      ),
    );
  }
}