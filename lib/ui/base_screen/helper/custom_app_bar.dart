import 'package:flutter/material.dart';
import 'package:revisiting_kody_test_ui/ui/utils/app_constants/app_constants.dart';
import 'package:revisiting_kody_test_ui/ui/utils/common_widgets/common_text.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      height: AppConstants.size.height * 0.15,
      decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
      ),
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.menu_outlined, color: Colors.white),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CommonText(text: 'Your Location', fontColor: Colors.white, fontSize: 13),
                  Row(
                    spacing: 8,
                    children: [
                      CommonText(
                        text: 'Punjab, India',
                        fontColor: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      Icon(Icons.keyboard_arrow_down, color: Colors.white),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Row(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.notification_add, color: Colors.white),
              Icon(Icons.account_circle, color: Colors.white),
            ],
          ),
        ],
      ),
    );
  }
}
