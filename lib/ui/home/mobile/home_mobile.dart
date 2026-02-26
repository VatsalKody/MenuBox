import 'package:flutter/material.dart';
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

class HomeMobile extends StatefulWidget {
  const HomeMobile({super.key});

  @override
  State<HomeMobile> createState() => _HomeMobileState();
}

class _HomeMobileState extends State<HomeMobile> {
  void loadJsonData() {
    setState(() {
      HomeController.loadHomeJsonData();
    });
  }

  @override
  void initState() {
    super.initState();
    CommonPrint.printFunction(debugTypeIdentifier: 'hello arrived from base mobile');
    loadJsonData();
  }

  @override
  Widget build(BuildContext context) {
    AppConstants.size = MediaQuery.of(context).size;
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        Container(
          width: AppConstants.size.width,
          color: Colors.white,
          child: const Stack(
            children: [
              Column(
                spacing: 20,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomAppBar(),

                  SizedBox(height: 20,),

                  CustomCarouselScroll(),

                  CategoriesBuilder(),

                  CustomSingleLineLayoutBuilder(leftTitle: 'Recently Ordered on MenuBox', rightTitle: '', listName: 'recentlyOrdered',),

                  CommonExistingOffer(),

                  CustomSingleLineLayoutBuilder(leftTitle: 'In The Spotlight', rightTitle: 'View All', listName: 'Spotlight',),

                  StoreBuilder(),
                ],
              ),
              CustomSearchBar(),
            ],
          ),
        ),
      ],
    );
  }
}
