import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:revisiting_kody_test_ui/framework/controller/base_page_controller/base_page_controller.dart';
import 'package:revisiting_kody_test_ui/framework/controller/home_controller/home_controller.dart';
import 'package:revisiting_kody_test_ui/ui/base_screen/helper/custom_app_bar.dart';
import 'package:revisiting_kody_test_ui/ui/base_screen/helper/custom_bottom_navigator_bar.dart';
import 'package:revisiting_kody_test_ui/ui/utils/app_constants/common_print.dart';
import 'package:revisiting_kody_test_ui/ui/utils/themes/app_colors.dart';

class BaseMobile extends ConsumerStatefulWidget {
  const BaseMobile({super.key});

  @override
  ConsumerState<BaseMobile> createState() => _BaseMobileState();
}

class _BaseMobileState extends ConsumerState<BaseMobile> {
  @override
  Widget build(BuildContext context) {
    final bodyController = ref.watch(homeController);
    final bottomNavigatorBarController = ref.watch(basePageController);
    CommonPrint.printFunction(
      debugTypeIdentifier:
          'Number of items in base page controller\'s carousels is ${bodyController.banner}',
    );
    return AnnotatedRegion(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(MediaQuery.of(context).size.height*0.17),
          child: const CustomAppBar(),
        ),
        // backgroundColor: AppColors.clrBlack,
        body: SizedBox(
          height: MediaQuery.of(context).size.height*0.85,
          width: double.infinity,
          child: bottomNavigatorBarController
              .bodyItems[bottomNavigatorBarController.navItem],
        ),
        bottomNavigationBar: const CustomBottomNavigatorBar(),
      ),
    );
  }
}
