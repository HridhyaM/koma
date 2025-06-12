import 'package:flutter/material.dart';
import 'package:koma/styles/app_colors.dart';
import 'package:koma/styles/app_text_styles.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback ontap;

  const CustomAppbar({
    super.key,
    required this.title,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      
      automaticallyImplyLeading: false,
      titleSpacing: 0,
      toolbarHeight: kToolbarHeight + 10, 
      flexibleSpace: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 16, right: 16), 
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title, style: AppTextStyles.appname),
              IconButton(
                onPressed: ontap,
                icon: Icon(Icons.menu, color: AppColors.iconColors),
              ),
            ],
          ),
        ),
      ),
     
      elevation: 0,
      backgroundColor: Colors.transparent,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 10);
}
