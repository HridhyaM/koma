import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:koma/styles/app_text_styles.dart';

class SucessScreen extends StatelessWidget {
  const SucessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/sucess_img.png'),
            SizedBox(
              height: 10,
            ),
            Text('Sucess!',style: AppTextStyles.smallText,),
            Text('You can now log in to your account.',style: AppTextStyles.smallText,)
          ],
        ),
      ),
    );
  }
}