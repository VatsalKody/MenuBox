import 'package:flutter/material.dart';
import 'package:revisiting_kody_test_ui/ui/utils/app_constants/app_constants.dart';
import 'package:revisiting_kody_test_ui/ui/utils/common_widgets/common_text.dart';
import 'package:revisiting_kody_test_ui/ui/utils/themes/app_colors.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      height: AppConstants.size.height * 0.15,
      decoration: BoxDecoration(
        color: AppColors.clrBlack,
        borderRadius: const BorderRadius.vertical(bottom: Radius.circular(20)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(AppConstants.menuIcon, color: AppColors.clrWhite),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CommonText(
                    text: AppConstants.strYourLocation,
                    fontColor: AppColors.clrWhite,
                    fontSize: 13,
                  ),
                  Row(
                    spacing: 8,
                    children: [
                      CommonText(
                        text: AppConstants.strPunjabIndia,
                        fontColor: AppColors.clrWhite,
                        fontWeight: FontWeight.bold,
                      ),
                      Icon(AppConstants.downArrowIcon, color: AppColors.clrWhite),
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
              Icon(AppConstants.notificationAddIcon, color: AppColors.clrWhite),
              Icon(AppConstants.profileIcon, color: AppColors.clrWhite),
            ],
          ),
        ],
      ),
    );
  }
}
