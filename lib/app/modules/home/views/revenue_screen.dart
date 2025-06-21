import 'package:flutter/material.dart';

class RevenueScreen extends StatelessWidget {
  const RevenueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 150),
            child: SizedBox(
             
              child: Stack(
                alignment: Alignment.center,
                clipBehavior: Clip.none,
                children: [
                  // Bottom Purple Earnings Card
               
            
                  // Top White Border Info Card
                  Container(
                    width: 350,
                    height: 200,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: const Color(0xff6053D8), width: 1.5),
                      color: Colors.transparent,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          "Watch Ads & Withdraw Real Cash! 💰",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                          
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Enjoy content & get paid! Watch ads, collect\npoints, and withdraw real money instantly. 🚀\nStart earning now!",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 13,
                            height: 1.4,
                          ),
                        ),
                      ],
                    ),
                  ),
                     Positioned(
                      top: 120,
                       child: Container(
                                       width: 390,
                                       padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                                       decoration: BoxDecoration(
                        color: const Color(0xff6053D8),
                        borderRadius: BorderRadius.circular(20),
                                       ),
                                       child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            "Congratulations, Marry Ferno",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            "Your Total Earnings",
                            style: TextStyle(color: Colors.white70, fontSize: 14),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "₹ 2500.01",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 20),
                          SizedBox(
                            height: 50,
                            width: 200,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor: const Color(0xff6053D8),
                                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              onPressed: () {},
                             
                             child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Text("Withdraw"),
                                 SizedBox(
                                  width: 10,
                                 ),
                                   const Icon(Icons.assured_workload,color:Color(0xff6053D8) ,),
                               ],
                             ),
                               
                            ),
                          )
                        ],
                                       ),
                                     ),
                     ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
