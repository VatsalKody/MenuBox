import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:revisiting_kody_test_ui/framework/controller/home_controller/home_controller.dart';
import 'package:revisiting_kody_test_ui/ui/home/helper/view_all.dart';
import 'package:revisiting_kody_test_ui/ui/utils/common_widgets/common_text.dart';

class CustomFilledButton extends StatelessWidget {
  const CustomFilledButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: HomeController.stores.length > 5,
      child: FilledButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ViewAll(type: 'Stores')),
          );
        },
        style: const ButtonStyle(
          fixedSize: WidgetStatePropertyAll(Size(375, 50)),
          backgroundColor: WidgetStatePropertyAll(Colors.black),
        ),
        child: const CommonText(
          text: 'View All Restaurants',
          fontColor: Colors.white,
        ),
      ),
    );
  }
}
