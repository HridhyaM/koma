import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:koma/app/modules/home/controllers/bottom_navigation_controller.dart';
import 'package:koma/app/modules/home/views/home_screen.dart';
import 'package:koma/app/modules/home/views/revenue_screen.dart';
import 'package:koma/app/modules/home/views/room_screen_list.dart';
import 'package:koma/styles/app_colors.dart';

import 'package:koma/widgets/custom_appbar.dart';

class BottomNavigation extends StatelessWidget {
  BottomNavigation({super.key});

  final BottomNavigationController navigationController = Get.put(BottomNavigationController());

  final List<Widget> pages = [
    HomeScreen(),
    RoomScreenList(),
   RevenueScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
     appBar: CustomAppbar(title: "KOMA", ontap: (){}),
      body: pages[navigationController.selectedIndex.value],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        currentIndex: navigationController.selectedIndex.value,
        onTap: navigationController.changebottonTab,
        type: BottomNavigationBarType.fixed, // Ensure selected/unselected colors apply
  selectedItemColor: AppColors.primary,
  unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.room), label: "Rooms"),
          BottomNavigationBarItem(icon: Icon(Icons.money), label: "Revenue"),
        ],
      ),
    ));
  }
}
