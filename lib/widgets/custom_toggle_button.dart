import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:koma/app/modules/home/controllers/toggle_controller.dart';


class CustomToggleButton extends StatelessWidget {
  CustomToggleButton({super.key});

  final ToggleController controller = Get.put(ToggleController());

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => controller.toggle(),
      child: Obx(() {
        return Container(
          width: 51,
          height: 25,
          decoration: BoxDecoration(
            color: controller.isOn.value ? Colors.teal : Colors.grey,
            borderRadius: BorderRadius.circular(20),
          ),
          child: AnimatedAlign(
            duration: const Duration(milliseconds: 200),
            alignment: controller.isOn.value
                ? Alignment.centerRight
                : Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                width: 22,
                height: 22,
                decoration: BoxDecoration(
                  color:
                      controller.isOn.value ? Colors.white : Colors.black,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
