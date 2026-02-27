import 'package:flutter/material.dart';
import 'package:revisiting_kody_test_ui/framework/controller/home_controller/home_controller.dart';
import 'package:revisiting_kody_test_ui/ui/utils/app_constants/app_constants.dart';
import 'package:revisiting_kody_test_ui/ui/utils/common_widgets/common_existing_card.dart';
import 'package:revisiting_kody_test_ui/ui/utils/common_widgets/common_row_title.dart';
import 'package:revisiting_kody_test_ui/ui/utils/common_widgets/common_spotlight_store_card.dart';
import 'package:revisiting_kody_test_ui/ui/utils/common_widgets/common_text.dart';

class ViewAll extends StatelessWidget {
  const ViewAll({super.key, required this.type});
  final String type; // Spotlight, Store, Exciting Offers

  @override
  Widget build(BuildContext context) {
    List<dynamic> itemsList = [];
    if (type == AppConstants.strSpotlightType || type == AppConstants.strAllStoresType) {
      itemsList = HomeController.stores;
    } else {
      // exciting offers
      itemsList = HomeController.existingOffers;
    }
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.chevron_left, size: 30, color: Colors.black),
        ),
        title: CommonText(text: type, fontWeight: FontWeight.bold, fontSize: 18),
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        foregroundColor: Colors.transparent,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              spacing: 20,
              children: [
                Visibility(
                  visible: type != AppConstants.strExcitingOffersLeftTitle,
                  child: Column(
                    children: [
                      CommonRowTitle(
                        leftTitle: AppConstants.strAllStoresType,
                        icon: AppConstants.filterIcon,
                        number: itemsList.length.toString(),
                        rightTitle: AppConstants.strExcitingOffersRightTitle,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: itemsList.length,
                    itemBuilder: (context, index) {
                      dynamic item = itemsList[index];
                      return type == AppConstants.strExcitingOffersLeftTitle
                          ? CommonExistingCard(
                              image: item.image,
                              name: item.name,
                              subtitle: item.subtitle,
                              offerTitle: item.offerTitle,
                            )
                          : CommonSpotLightStoreCard(item: item);
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
