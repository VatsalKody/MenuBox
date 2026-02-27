import 'package:flutter/material.dart';
import 'package:revisiting_kody_test_ui/ui/utils/themes/app_colors.dart';

class CommonText extends StatelessWidget {
  const CommonText({super.key, required this.text, this.fontColor, this.fontSize, this.fontWeight});

  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? fontColor;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.vertical,
      children: [
        Text(
          text,
          style: TextStyle(
            fontWeight: fontWeight ?? FontWeight.normal,
            color: fontColor ?? AppColors.clrBlack,
            fontSize: fontSize ?? 15,
            overflow: TextOverflow.ellipsis,
          ),
          maxLines: 2,
        ),
      ],
    );
  }
}
