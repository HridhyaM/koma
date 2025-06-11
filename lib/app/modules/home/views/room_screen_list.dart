import 'package:flutter/material.dart';
import 'package:koma/styles/app_colors.dart';
import 'package:koma/styles/app_padding.dart';
import 'package:koma/styles/app_text_styles.dart';
import 'package:koma/widgets/custom_button.dart';
import 'package:koma/widgets/custom_text_filed.dart';

class RoomScreenList extends StatelessWidget {
  const RoomScreenList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title:  Text("KOMA", style: AppTextStyles.appname),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.menu,color: AppColors.iconColors,))
        ],
      ),

      body: Padding(
        padding: AppPadding.screenPadding,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(
                width: double.infinity,
                child:CustomTextFiled(hintText: "Search room here")
              ),
              SizedBox(
                height: 20,
              ),
              Row(
             
                children: [
                  CircleAvatar(
                    backgroundColor: AppColors.primary,
                    radius: 30,
                    child: Icon(Icons.add),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text('Create a new room',style: AppTextStyles.buttonText,),
                
                 
                ],
              ),
                SizedBox(
                    height: 10,
                  ),
               SizedBox(
                    height: 600,
                    child: ListView.builder(itemBuilder: (context,index){
                      return ListTile(
                        leading: CircleAvatar(
                          radius: 20,
                        ),
                        title: Text('Cine Factory'),
                        subtitle: Text('Smith : typing'),
                        trailing: CircleAvatar(
                          radius: 5,
                          backgroundColor: AppColors.trailingcolor,
                        ),
                      );
                    }),
                  )
            
            ],
          ),
        ),
      ),
      
    );
  }
}