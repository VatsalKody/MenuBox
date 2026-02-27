import 'package:flutter/material.dart';
import 'package:revisiting_kody_test_ui/framework/repository/home_repository/store_model.dart';
import 'package:revisiting_kody_test_ui/ui/utils/common_widgets/common_text.dart';
import 'package:revisiting_kody_test_ui/ui/utils/common_widgets/crop_image.dart';
import 'package:revisiting_kody_test_ui/ui/utils/themes/app_colors.dart';

class CommonSpotLightStoreCard extends StatelessWidget {
  const CommonSpotLightStoreCard({super.key, required this.item});
  final Store item;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Card(
        shadowColor: AppColors.clrGrey,
        elevation: 2,
        child: Column(
          spacing: 5,
          children: [
            CropImage(imagePath: item.banner, height: 125, width: 375),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CommonText(text: item.name),
                      CommonText(
                        text: 'Free Delivery Upto ${item.freeDeliveryKm} Km',
                        fontColor: AppColors.clrGreen,
                        fontSize: 13,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        spacing: 7,
                        children: [
                          Icon(Icons.star, color: AppColors.clrBlack),
                          CommonText(text: item.rating),
                          CommonText(text: '(${item.review}+)', fontColor: AppColors.clrGrey600),
                        ],
                      ),
                      Row(
                        spacing: 7,
                        children: [
                          Icon(Icons.access_time_rounded, color: AppColors.clrBlack),
                          CommonText(text: item.deliveryTime, fontColor: AppColors.clrGrey600),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    spacing: 7,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        spacing: 7,
                        children: [
                          CommonText(text: 'Min. Order', fontColor: AppColors.clrGrey600),
                          CommonText(text: '${item.minOrder} INR', fontWeight: FontWeight.bold),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.location_on, color: AppColors.clrBlack),
                          CommonText(text: item.distance, fontColor: AppColors.clrGrey600),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: AppColors.clrGreen,
                borderRadius: const BorderRadius.vertical(bottom: Radius.circular(12.0)),
              ),
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CommonText(text: item.offer.title, fontColor: AppColors.clrWhite),
                  CommonText(
                    text: item.offer.code,
                    fontColor: AppColors.clrWhite,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
