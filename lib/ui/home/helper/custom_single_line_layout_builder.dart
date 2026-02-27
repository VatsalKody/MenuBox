import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:revisiting_kody_test_ui/framework/controller/home_controller/home_controller.dart';
import 'package:revisiting_kody_test_ui/ui/home/helper/brand_image_card.dart';
import 'package:revisiting_kody_test_ui/ui/home/helper/view_all.dart';
import 'package:revisiting_kody_test_ui/ui/utils/app_constants/common_print.dart';
import 'package:revisiting_kody_test_ui/ui/utils/common_widgets/common_row_title.dart';

class CustomSingleLineLayoutBuilder extends ConsumerWidget {
  const CustomSingleLineLayoutBuilder({super.key, required this.leftTitle, required this.rightTitle, this.listName = 'Exciting Offers'});
  final String leftTitle, rightTitle, listName;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<dynamic> listOfCards = [];
    final listViewBuilderController = ref.read(homeController);
    void customFunction() {
      CommonPrint.printFunction(debugTypeIdentifier: 'Clicked on View All button, $listName');
      Navigator.push(context, MaterialPageRoute(builder: (context) => ViewAll(type: listName)),);
    }

    if(listName == 'Exciting Offers') {
      listOfCards = listViewBuilderController.existingOffers ?? [];
    }
    else {
      listOfCards = listViewBuilderController.recentOrders ?? [];
    }

    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15),
      child: Column(
        spacing: 10,
        children: [
          CommonRowTitle(leftTitle: leftTitle, rightTitle: rightTitle, onTapFunction: customFunction,),
          Container(
            height: 150,
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: ListView.builder(
              shrinkWrap: true,
              itemExtent: 100,
              itemCount: listOfCards.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                dynamic item = listOfCards[index];
                return BrandImageCard(image: item.image, name: item.name, hasShadow: true, shape: 'rectangle',);
              },
            ),
          ),
        ],
      ),
    );
  }
}