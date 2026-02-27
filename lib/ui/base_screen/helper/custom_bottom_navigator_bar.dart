import 'package:flutter/material.dart';
import 'package:revisiting_kody_test_ui/framework/controller/base_page_controller/base_page_controller.dart';
import 'package:revisiting_kody_test_ui/ui/utils/themes/app_colors.dart';

class CustomBottomNavigatorBar extends StatefulWidget {
  const CustomBottomNavigatorBar({super.key});

  @override
  State<CustomBottomNavigatorBar> createState() => _CustomBottomNavigatorBarState();
}

class _CustomBottomNavigatorBarState extends State<CustomBottomNavigatorBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: BasePageController.navBarItems.map((navBar) {
        return BottomNavigationBarItem(icon: Icon(navBar.icon), label: navBar.label);
      }).toList(),
      onTap: (index) {
        setState(() {
          BasePageController.navItem = index;
        });
      },
      currentIndex: BasePageController.navItem,
      unselectedItemColor: AppColors.clrGrey,
      selectedItemColor: AppColors.clrBlack,
    );
  }
}
