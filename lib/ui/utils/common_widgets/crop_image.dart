import 'package:flutter/material.dart';
import 'package:revisiting_kody_test_ui/ui/utils/app_constants/app_constants.dart';
import 'package:revisiting_kody_test_ui/ui/utils/themes/app_colors.dart';

class CropImage extends StatelessWidget {
  const CropImage({super.key, required this.imagePath, this.height, this.width, this.fit});
  final String imagePath;
  final double? height;
  final double? width;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Image.network(
        imagePath,
        errorBuilder: (context, error, stackTrace) {
          return Placeholder(
            child: Center(child: Icon(AppConstants.errorIcon, color: AppColors.clrBlue)),
          );
        },
        loadingBuilder: (context, child, loadingProgress) {
          return loadingProgress == null
              ? child
              : CircularProgressIndicator(color: AppColors.clrRed);
        },
        width: width ?? 400,
        height: height ?? 200,
        fit: fit ?? BoxFit.fill,
      ),
    );
  }
}
