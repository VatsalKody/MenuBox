import 'package:flutter/material.dart';
import 'package:revisiting_kody_test_ui/ui/utils/app_constants/app_constants.dart';
import 'package:revisiting_kody_test_ui/ui/utils/themes/app_colors.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.12, // web 75, personal mobile -- 100
      left: 20,
      right: 20,
      height: 50,
      child: SearchBar(
        shadowColor: WidgetStatePropertyAll(AppColors.clrGrey600),
        elevation: const WidgetStatePropertyAll(5),
        backgroundColor: WidgetStatePropertyAll(AppColors.clrWhite),
        hintText: AppConstants.strSearchHere,
        leading: const Icon(AppConstants.searchIcon),
      ),
    );
  }
}
