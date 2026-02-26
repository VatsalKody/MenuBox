import 'package:flutter/material.dart';
import 'package:revisiting_kody_test_ui/ui/utils/common_widgets/common_text.dart';

class CommonRowTitle extends StatelessWidget {
  const CommonRowTitle({
    super.key,
    required this.leftTitle,
    this.rightTitle,
    this.number,
    this.icon,
    this.onTapFunction,
  });
  final String leftTitle;
  final String? rightTitle;
  final String? number;
  final IconData? icon;
  final Function? onTapFunction;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CommonText(
          text: '${number ?? ''} $leftTitle',
          fontSize: 18,
          fontWeight: FontWeight.bold,
          fontColor: Colors.black,
        ),
        Row(
          spacing: 10,
          children: [
            InkWell(
              onTap: () => onTapFunction,
              child: CommonText(text: rightTitle ?? '', fontSize: 18),
            ),
            Visibility(visible: icon != null, child: Icon(icon, size: 18)),
          ],
        ),
      ],
    );
  }
}
