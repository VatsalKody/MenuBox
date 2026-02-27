import 'package:flutter/material.dart';
import 'package:revisiting_kody_test_ui/framework/controller/home_controller/home_controller.dart';
import 'package:revisiting_kody_test_ui/framework/repository/home_repository/existing_offer_model.dart';
import 'package:revisiting_kody_test_ui/ui/home/helper/view_all.dart';
import 'package:revisiting_kody_test_ui/ui/utils/app_constants/app_constants.dart';
import 'package:revisiting_kody_test_ui/ui/utils/app_constants/common_print.dart';
import 'package:revisiting_kody_test_ui/ui/utils/common_widgets/common_existing_card.dart';
import 'package:revisiting_kody_test_ui/ui/utils/common_widgets/common_row_title.dart';
import 'package:revisiting_kody_test_ui/ui/utils/themes/app_colors.dart';

class CommonExistingOffer extends StatelessWidget {
  const CommonExistingOffer({super.key});

  @override
  Widget build(BuildContext context) {
    int n = (HomeController.existingOffers.length ~/ 2).ceil();
    CommonPrint.printFunction(debugTypeIdentifier: 'Common Exciting Offers length is $n');
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        spacing: 10,
        children: [
          CommonRowTitle(
            leftTitle: AppConstants.strExcitingOffersLeftTitle,
            rightTitle: AppConstants.strExcitingOffersRightTitle,
            onTapFunction: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ViewAll(type: 'Spotlights')),
              );
            },
          ),
          SizedBox(
            height: 290,
            child: ListView(
              padding: const EdgeInsets.only(right: 20.0),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemExtent: 300,
              children: List.generate(n, (index) {
                ExistingOffer item1 = HomeController.existingOffers[2 * index];
                ExistingOffer? item2 = ((2 * index + 1) < 2 * n)
                    ? HomeController.existingOffers[2 * index + 1]
                    : null;
                CommonPrint.printFunction(
                  debugTypeIdentifier:
                      'Existing Offers item1 = ${item1.name} & item2 is ${item2!.name}',
                );
                return Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Column(
                    spacing: 15,
                    children: [
                      CommonExistingCard(
                        image: item1.image,
                        name: item1.name,
                        subtitle: item1.subtitle,
                        offerTitle: item1.offerTitle,
                      ),
                      Divider(color: AppColors.clrGrey300),
                      CommonExistingCard(
                        image: item2.image,
                        name: item2.name,
                        subtitle: item2.subtitle,
                        offerTitle: item2.offerTitle,
                      ),
                      Divider(color: AppColors.clrGrey300),
                    ],
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
