import 'package:flutter/material.dart';
import 'package:revisiting_kody_test_ui/framework/controller/base_page_controller/base_page_controller.dart';
import 'package:revisiting_kody_test_ui/framework/controller/home_controller/home_controller.dart';
import 'package:revisiting_kody_test_ui/ui/base_screen/helper/custom_bottom_navigator_bar.dart';
import 'package:revisiting_kody_test_ui/ui/utils/app_constants/common_print.dart';

class BaseMobile extends StatefulWidget {
  const BaseMobile({super.key});

  @override
  State<BaseMobile> createState() => _BaseMobileState();
}

class _BaseMobileState extends State<BaseMobile> {
  @override
  Widget build(BuildContext context) {
    CommonPrint.printFunction(
      debugTypeIdentifier:
          'Number of items in base page controller\'s carousels is ${HomeController.banner}',
    );
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: BasePageController.bodyItems[BasePageController.navItem],
      ),
      bottomNavigationBar: const CustomBottomNavigatorBar(),
    );
  }
}
