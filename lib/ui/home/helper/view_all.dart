import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:revisiting_kody_test_ui/framework/controller/home_controller/home_controller.dart';
import 'package:revisiting_kody_test_ui/ui/home/helper/custom_search_bar.dart';
import 'package:revisiting_kody_test_ui/ui/utils/app_constants/app_constants.dart';
import 'package:revisiting_kody_test_ui/ui/utils/common_widgets/common_existing_card.dart';
import 'package:revisiting_kody_test_ui/ui/utils/common_widgets/common_row_title.dart';
import 'package:revisiting_kody_test_ui/ui/utils/common_widgets/common_spotlight_store_card.dart';
import 'package:revisiting_kody_test_ui/ui/utils/common_widgets/common_text.dart';
import 'package:revisiting_kody_test_ui/ui/utils/themes/app_colors.dart';

class ViewAll extends ConsumerWidget {
  const ViewAll({super.key, required this.type});
  final String type; // Spotlight, Store, Exciting Offers

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewAllController = ref.read(homeController);
    List<dynamic> itemsList = [];
    if (type == AppConstants.strSpotlightType || type == AppConstants.strAllStoresType) {
      itemsList = viewAllController.stores ?? [];
    } else {
      // exciting offers
      itemsList = viewAllController.existingOffers ?? [];
    }
    return Scaffold(
      backgroundColor: AppColors.clrWhite,
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        bottom: PreferredSize(
            preferredSize: Size(
                double.infinity, // width of bottom
                type == 'Exciting Offers' ? 50 : 30, // height of bottom
            ),
            child: Column(
              children: [
                type == 'Exciting Offers' ? SearchBar(
                  shadowColor: WidgetStatePropertyAll(AppColors.clrWhite),
                  elevation: const WidgetStatePropertyAll(2),
                  backgroundColor: WidgetStatePropertyAll(AppColors.clrWhite),
                  hintText: AppConstants.strSearchHere,
                  leading: const Icon(AppConstants.searchIcon),
                ) :
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CommonRowTitle(
                    leftTitle: AppConstants.strAllStoresType,
                    icon: AppConstants.filterIcon,
                    number: itemsList.length.toString(),
                    rightTitle: 'Filters',
                  ),
                ),
              ],
            ),
        ),
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
            padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
            child: Column(
              spacing: 20,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding: const EdgeInsets.only(bottom: 20),
                    itemCount: itemsList.length,
                    itemBuilder: (context, index) {
                      dynamic item = itemsList[index];
                      if (type == AppConstants.strExcitingOffersLeftTitle) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: Column(
                            spacing: 20,
                            children: [
                              CommonExistingCard(
                                    image: item.image,
                                    name: item.name,
                                    subtitle: item.subtitle,
                                    offerTitle: item.offerTitle,
                                  ),
                              Divider( color: AppColors.clrGrey300,),
                            ],
                          ),
                        );
                      } else {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: CommonSpotLightStoreCard(item: item),
                        );
                      }
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
