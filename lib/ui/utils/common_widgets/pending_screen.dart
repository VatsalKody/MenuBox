import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:revisiting_kody_test_ui/framework/controller/base_page_controller/base_page_controller.dart';
import 'package:revisiting_kody_test_ui/ui/utils/common_widgets/common_text.dart';
import 'package:revisiting_kody_test_ui/ui/utils/themes/app_colors.dart';

class PendingScreen extends ConsumerWidget {
  const PendingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final placeholderScreenController = ref.read(basePageController);
    String title = placeholderScreenController.navBarItems[placeholderScreenController.navItem].label;
    return Placeholder(
      child: Center(
        child: CommonText(text: title, fontWeight: FontWeight.bold, fontColor: AppColors.clrRed,),
      ),
    );
  }
}
