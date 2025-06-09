import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:koma/app/routes/app_pages.dart';
import 'package:koma/app/routes/app_routes.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark, // 👈 Force dark mode
      theme: ThemeData.light(),  // Not used, but required
      darkTheme: ThemeData.dark(),
      
      initialRoute: AppRoutes.login,
      getPages: AppPages.pages,
    );
  }
}