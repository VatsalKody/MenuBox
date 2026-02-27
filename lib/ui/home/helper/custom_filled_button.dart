import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:revisiting_kody_test_ui/framework/controller/home_controller/home_controller.dart';
import 'package:revisiting_kody_test_ui/ui/home/helper/view_all.dart';
import 'package:revisiting_kody_test_ui/ui/utils/app_constants/app_constants.dart';
import 'package:revisiting_kody_test_ui/ui/utils/common_widgets/common_text.dart';
import 'package:revisiting_kody_test_ui/ui/utils/themes/app_colors.dart';

class CustomFilledButton extends ConsumerWidget {
  const CustomFilledButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final buttonController = ref.read(homeController);
    return Visibility(
      visible: buttonController.stores!.length > 5,
      child: FilledButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ViewAll(type: AppConstants.strAllStoresType),
            ),
          );
        },
        style: ButtonStyle(
          fixedSize: const WidgetStatePropertyAll(Size(375, 50)),
          backgroundColor: WidgetStatePropertyAll(AppColors.clrBlack),
        ),
        child: CommonText(text: AppConstants.strFilledViewAllButton, fontColor: AppColors.clrWhite),
      ),
    );
  }
}
