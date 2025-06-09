import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:koma/styles/app_padding.dart';
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
          children: [
        
            Text('Choose your country from the list.'),
            SizedBox(
              height: 50,
            ),
            CustomDropdown(hint: "Select Country", items: ["india",])
          ],
        ),
      ),
    );
  }
}