import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:koma/app/routes/app_routes.dart';
import 'package:koma/styles/app_colors.dart';
import 'package:koma/widgets/custom_button.dart';
import 'package:koma/widgets/custom_toggle_button.dart';

class AlertCopy extends StatefulWidget {
  const AlertCopy({super.key});

  @override
  State<AlertCopy> createState() => _AlertCopyState();
}

class _AlertCopyState extends State<AlertCopy> {
  bool isAdminOnly = false;
  final String code = "Pwqavims5";

  @override
  void initState() {
    super.initState();
    // Delay dialog until after first frame
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showCustomDialog();
    });
  }

  void _showCustomDialog() {
    showDialog(
      context: context,
      builder: (_) => Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        backgroundColor: const Color(0xFF1E1E1E),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SizedBox(
            width: 300,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Header Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'share this code to your friends',
                      style: TextStyle(color: Colors.white70, fontSize: 14),
                    ),
                    IconButton(
                      icon: const Icon(Icons.close, color: Colors.white),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ],
                ),
                const SizedBox(height: 10),

                // Code Box
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    color: const Color(0xFF2C2C2C),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 45,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(code, style: const TextStyle(color: Colors.white)),
                      IconButton(
                        icon: const Icon(Icons.copy, color: Colors.white70, size: 18),
                        onPressed: () {
                          
                        
                        },
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // Copy Button
             SizedBox(
              width: 200,
              height: 50,
               child: CustomButton(
                bgcolor: AppColors.primary,
                child: Text("Copy"), onTap: (){
                  Get.toNamed(AppRoutes.media);
                }),
             ),

                const SizedBox(height: 20),

                // Toggle Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Only Admin can control",
                      style: TextStyle(color: Colors.white),
                    ),
                         CustomToggleButton()
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(), // No button here
    );
  }
}
