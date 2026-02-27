import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:revisiting_kody_test_ui/framework/controller/home_controller/home_controller.dart';import 'package:revisiting_kody_test_ui/ui/utils/common_widgets/crop_image.dart';
import 'package:revisiting_kody_test_ui/ui/utils/themes/app_colors.dart';

class CustomCarouselScroll extends ConsumerStatefulWidget {
  const CustomCarouselScroll({super.key});

  @override
  ConsumerState<CustomCarouselScroll> createState() => _CustomCarouselScrollState();
}

class _CustomCarouselScrollState extends ConsumerState<CustomCarouselScroll> {
  @override
  Widget build(BuildContext context) {
    final carouselController = ref.watch(homeController);
    return Column(
      spacing: 10,
      children: [
        CarouselSlider(
          items: carouselController.banner!.map((item) {
            return CropImage(imagePath: item);
          }).toList(),
          options: CarouselOptions(
            scrollDirection: Axis.horizontal,
            height: 150,
            initialPage: 0,
            aspectRatio: 0.8,
            onPageChanged: (index, reason) {
              carouselController.updateCarouselIndex(index);
            },
            autoPlay: true,
            enableInfiniteScroll: true,
            enlargeCenterPage: true,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(carouselController.banner!.length, (index) {
            bool isCurrentBanner = index == carouselController.carouselIndex;
            return Container(
              height: 7,
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              // padding: const EdgeInsets.only(left: 30, right: 30),
              width: isCurrentBanner ? 30 : 6,
              decoration: BoxDecoration(
                color: isCurrentBanner ? AppColors.clrBlack : AppColors.clrGrey100,
                border: Border.all(color: AppColors.clrBlack),
                borderRadius: const BorderRadius.horizontal(
                  right: Radius.circular(20),
                  left: Radius.circular(20),
                ),
              ),
            );
          }),
        ),
      ],
    );
  }
}
