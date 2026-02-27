import 'package:flutter/material.dart';
import 'package:revisiting_kody_test_ui/ui/utils/app_constants/app_constants.dart';
import 'package:revisiting_kody_test_ui/ui/utils/themes/app_colors.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 75,
      left: 20,
      right: 20,
      height: 50,
      child: SearchBar(
        shadowColor: WidgetStatePropertyAll(AppColors.clrWhite),
        elevation: const WidgetStatePropertyAll(2),
        backgroundColor: WidgetStatePropertyAll(AppColors.clrWhite),
        hintText: AppConstants.strSearchHere,
        leading: const Icon(AppConstants.searchIcon),
      ),
    );
  }
}
