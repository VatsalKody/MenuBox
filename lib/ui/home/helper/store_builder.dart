import 'dart:math';
import 'package:flutter/material.dart';
import 'package:revisiting_kody_test_ui/framework/controller/home_controller/home_controller.dart';
import 'package:revisiting_kody_test_ui/framework/repository/home_repository/store_model.dart';
import 'package:revisiting_kody_test_ui/ui/home/helper/custom_filled_button.dart';
import 'package:revisiting_kody_test_ui/ui/utils/app_constants/common_print.dart';
import 'package:revisiting_kody_test_ui/ui/utils/common_widgets/common_row_title.dart';
import 'package:revisiting_kody_test_ui/ui/utils/common_widgets/common_text.dart';

class StoreBuilder extends StatelessWidget {
  const StoreBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      width: 375,
      child: Column(
        spacing: 20,
        children: [
          const CommonRowTitle(leftTitle: 'All Stores'),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: min(5, HomeController.stores.length),
            itemBuilder: (context, index) {
              Store item = HomeController.stores[index];
              CommonPrint.printFunction(debugTypeIdentifier: item.banner);
              return Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Card(
                  shadowColor: Colors.grey,
                  elevation: 2,
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadiusGeometry.circular(15.0),
                            child: Image.network(
                              item.banner,
                              fit: BoxFit.fitWidth, // no fill, cover, contain
                              height: 125,
                              width: 375,
                              errorBuilder: (context, error, stackTrace) {
                                return const CircularProgressIndicator(
                                  color: Colors.red,
                                );
                              },
                              loadingBuilder:
                                  (context, child, loadingProgress) {
                                    return loadingProgress == null
                                        ? child
                                        : const CircularProgressIndicator(
                                            color: Colors.blue,
                                          );
                                  },
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            left: 10,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              maxRadius: 40,
                              minRadius: 25,
                              child: Image.network(
                                item.image,
                                height: 75,
                                width: 75,
                                fit: BoxFit.contain,
                                errorBuilder: (context, error, stackTrace) {
                                  CommonPrint.printFunction(debugTypeIdentifier: error.toString());
                                  return const CircularProgressIndicator(
                                    color: Colors.red,
                                  );
                                },
                                loadingBuilder:
                                    (context, child, loadingProgress) {
                                  return loadingProgress == null
                                      ? child
                                      : const CircularProgressIndicator(
                                    color: Colors.blue,
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CommonText(text: item.name),
                                CommonText(
                                  text:
                                      'Free Delivery Upto ${item.freeDeliveryKm} Km',
                                  fontColor: Colors.green,
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
                                    const Icon(Icons.star, color: Colors.black),
                                    CommonText(text: item.rating),
                                    CommonText(
                                      text: '(${item.review}+)',
                                      fontColor: Colors.grey.shade600,
                                    ),
                                  ],
                                ),
                                Row(
                                  spacing: 7,
                                  children: [
                                    const Icon(
                                      Icons.access_time_rounded,
                                      color: Colors.black,
                                    ),
                                    CommonText(
                                      text: item.deliveryTime,
                                      fontColor: Colors.grey.shade600,
                                    ),
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
                                    CommonText(
                                      text: 'Min. Order',
                                      fontColor: Colors.grey.shade600,
                                    ),
                                    CommonText(
                                      text: '${item.minOrder} INR',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.location_on,
                                      color: Colors.black,
                                    ),
                                    CommonText(
                                      text: item.distance,
                                      fontColor: Colors.grey.shade600,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.vertical(
                            bottom: Radius.circular(12.0),
                          ),
                        ),
                        height: 30,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CommonText(
                              text: item.offer.title,
                              fontColor: Colors.white,
                            ),
                            CommonText(
                              text: item.offer.code,
                              fontColor: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          const CustomFilledButton(),
        ],
      ),
    );
  }
}
