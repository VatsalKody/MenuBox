import 'package:flutter/material.dart';
import 'package:revisiting_kody_test_ui/framework/controller/home_controller/home_controller.dart';
import 'package:revisiting_kody_test_ui/framework/repository/home_repository/category_model.dart';
import 'package:revisiting_kody_test_ui/ui/home/helper/brand_image_card.dart';
import 'package:revisiting_kody_test_ui/ui/utils/app_constants/app_constants.dart';
import 'package:revisiting_kody_test_ui/ui/utils/common_widgets/common_row_title.dart';

class CategoriesBuilder extends StatelessWidget {
  const CategoriesBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    int n = (HomeController.categories.length ~/ 2).ceil();
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
      child: Column(
        spacing: 10,
        children: [
          const CommonRowTitle(leftTitle: AppConstants.strCategoriesLeftTitle),
          SizedBox(
            height: 325,
            child: ListView(
              padding: const EdgeInsets.only(right: 20.0),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: List.generate(n, (index) {
                Category item1 = HomeController.categories[2 * index];
                Category? item2 = (2 * index + 1 < 2 * n)
                    ? HomeController.categories[2 * index + 1]
                    : null;
                return Column(
                  spacing: 15,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    BrandImageCard(name: item1.name, image: item1.image),
                    Visibility(
                      visible: item2 != null,
                      child: BrandImageCard(name: item2!.name, image: item2.image),
                    ),
                  ],
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
