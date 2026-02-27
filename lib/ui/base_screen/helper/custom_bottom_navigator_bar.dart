import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:revisiting_kody_test_ui/framework/controller/base_page_controller/base_page_controller.dart';
import 'package:revisiting_kody_test_ui/ui/utils/themes/app_colors.dart';

class CustomBottomNavigatorBar extends ConsumerWidget {
  const CustomBottomNavigatorBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bottomController = ref.watch(basePageController);
    return BottomNavigationBar(
      // items: [
      //   BottomNavigationBarItem(
      //     icon: Icon(bottomController.navBarItems[0].icon),
      //     label: bottomController.navBarItems[0].label,
      //     backgroundColor: Colors.white,
      //     tooltip: 'Home',
      //   ),
      //   BottomNavigationBarItem(
      //     icon: Icon(bottomController.navBarItems[1].icon),
      //     label: bottomController.navBarItems[1].label,
      //     backgroundColor: Colors.white,
      //     tooltip: bottomController.navBarItems[1].label,
      //   ),
      //   BottomNavigationBarItem(
      //     icon: Icon(bottomController.navBarItems[2].icon),
      //     label: bottomController.navBarItems[2].label,
      //     backgroundColor: Colors.white,
      //     tooltip: bottomController.navBarItems[2].label,
      //   ),
      //   BottomNavigationBarItem(
      //     icon: Icon(bottomController.navBarItems[3].icon),
      //     label: bottomController.navBarItems[3].label,
      //     backgroundColor: Colors.white,
      //     tooltip: bottomController.navBarItems[3].label,
      //   ),
      // ],
      items: bottomController.navBarItems.map((navBar) {
        return BottomNavigationBarItem(
          icon: Icon(navBar.icon),
          label: navBar.label,
          tooltip: navBar.label,
          backgroundColor: AppColors.clrWhite,
        );
      }).toList(),
      currentIndex: bottomController.navItem,
      onTap: (index) {
        bottomController.updateNavItem(index);
      },
      selectedFontSize: 20,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      unselectedFontSize: 15,
      enableFeedback: true,
      elevation: 10,
      iconSize: 25,
      backgroundColor: AppColors.clrWhite,
      unselectedItemColor: AppColors.clrGrey,
      selectedItemColor: AppColors.clrBlack,
    );
  }
}
