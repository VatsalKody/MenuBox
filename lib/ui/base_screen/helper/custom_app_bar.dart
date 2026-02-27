import 'package:flutter/material.dart';
import 'package:revisiting_kody_test_ui/ui/home/helper/custom_search_bar.dart';
import 'package:revisiting_kody_test_ui/ui/utils/app_constants/app_constants.dart';
import 'package:revisiting_kody_test_ui/ui/utils/common_widgets/common_text.dart';
import 'package:revisiting_kody_test_ui/ui/utils/themes/app_colors.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: const EdgeInsets.only(left: 20.0, right: 20),
          height: MediaQuery.of(context).size.height * 0.2,
          decoration: BoxDecoration(
            color: AppColors.clrBlack,
            borderRadius: const BorderRadius.vertical(bottom: Radius.circular(20)),
          ),
        ),
        Positioned(
          top: 10,
          left: 5,
          right: 5,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(AppConstants.menuIcon, color: AppColors.clrWhite),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CommonText(
                    text: AppConstants.strYourLocation,
                    fontColor: AppColors.clrWhite,
                    fontSize: 13,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    spacing: 5,
                    children: [
                      const SizedBox(width: 10),
                      CommonText(
                        text: AppConstants.strPunjab,
                        fontColor: AppColors.clrWhite,
                        fontWeight: FontWeight.bold,
                      ),
                      CommonText(
                        text: AppConstants.strIndia,
                        fontColor: AppColors.clrWhite,
                        fontWeight: FontWeight.bold,
                      ),
                      Icon(
                        AppConstants.downArrowIcon,
                        color: AppColors.clrWhite,
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                spacing: 10,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    AppConstants.notificationAddIcon,
                    color: AppColors.clrWhite,
                  ),
                  Icon(AppConstants.profileIcon, color: AppColors.clrWhite),
                ],
              ),
            ],
          ),
        ),
        const CustomSearchBar(),
      ],
    );
  }
}
