import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:revisiting_kody_test_ui/framework/controller/home_controller/home_controller.dart';
import 'package:revisiting_kody_test_ui/ui/base_screen/helper/custom_app_bar.dart';
import 'package:revisiting_kody_test_ui/ui/home/helper/categories_builder.dart';
import 'package:revisiting_kody_test_ui/ui/home/helper/common_existing_offer.dart';
import 'package:revisiting_kody_test_ui/ui/home/helper/custom_carousel_scroll.dart';
import 'package:revisiting_kody_test_ui/ui/home/helper/custom_single_line_layout_builder.dart';
import 'package:revisiting_kody_test_ui/ui/home/helper/custom_search_bar.dart';
import 'package:revisiting_kody_test_ui/ui/home/helper/store_builder.dart';
import 'package:revisiting_kody_test_ui/ui/utils/app_constants/app_constants.dart';
import 'package:revisiting_kody_test_ui/ui/utils/app_constants/common_print.dart';
import 'package:revisiting_kody_test_ui/ui/utils/themes/app_colors.dart';

class HomeMobile extends ConsumerStatefulWidget {
  const HomeMobile({super.key});

  @override
  ConsumerState<HomeMobile> createState() => _HomeMobileState();
}

class _HomeMobileState extends ConsumerState<HomeMobile> {
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      final homeMobileController = ref.read(homeController);
      homeMobileController.loadHomeJsonData();
    },);
    CommonPrint.printFunction(debugTypeIdentifier: 'hello arrived from base mobile');
  }

  @override
  Widget build(BuildContext context) {
    AppConstants.size = MediaQuery.of(context).size;
    final homeMobileController = ref.watch(homeController);
    if(homeMobileController.banner == null) {
      return const Scaffold(
        body: CircularProgressIndicator(color: Colors.red,),
      );
    }
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        Container(
          width: AppConstants.size.width,
          color: AppColors.clrWhite,
          child: const Column(
            spacing: 20,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 25),
              CustomCarouselScroll(),
              CategoriesBuilder(),
              CustomSingleLineLayoutBuilder(
                leftTitle: AppConstants.strRecentlyOrderedLeftTitle,
                rightTitle: AppConstants.strRecentlyOrderedRightTitle,
                listName: AppConstants.strRecentlyOrderedType,
              ),
              CommonExistingOffer(),
              CustomSingleLineLayoutBuilder(
                leftTitle: AppConstants.strSpotlightLeftTitle,
                rightTitle: AppConstants.strSpotlightRightTitle,
                listName: AppConstants.strSpotlightType,
              ),
              StoreBuilder(),
            ],
          ),
        ),
      ],
    );
  }
}
