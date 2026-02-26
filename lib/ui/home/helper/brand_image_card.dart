import 'package:flutter/material.dart';
import 'package:revisiting_kody_test_ui/ui/utils/common_widgets/common_text.dart';

class BrandImageCard extends StatelessWidget {
  const BrandImageCard({
    super.key,
    this.name = 'NA',
    required this.image,
    this.hasDivider = false,
    this.hasShadow = false,
    this.shape = 'circle',
  });
  final String name;
  final String image;
  final String shape;
  final bool hasDivider;
  final bool hasShadow;

  @override
  Widget build(BuildContext context) {
    double roundedBorders = shape == 'circle' ? 50 : 20;
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Column(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(roundedBorders),
            ),
            elevation: hasShadow ? 5.0 : 0.0,
            shadowColor: hasShadow ? Colors.grey.shade200 : Colors.transparent,
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(roundedBorders),
              child: Image.network(
                image,
                height: 100,
                width: 100,
                fit: BoxFit.fill,
                errorBuilder: (context, error, stackTrace) {
                  return const CircularProgressIndicator(color: Colors.blue);
                },
              ),
            ),
          ),
          Visibility(
            visible: name != 'NA',
            child: CommonText(text: name),
          ),
          Visibility(visible: hasDivider, child: const Divider()),
        ],
      ),
    );
  }
}
