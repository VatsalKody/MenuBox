import 'package:flutter/material.dart';
import 'package:revisiting_kody_test_ui/ui/utils/common_widgets/common_text.dart';

class CommonExistingCard extends StatelessWidget {
  const CommonExistingCard({
    super.key,
    required this.image,
    required this.name,
    required this.subtitle,
    required this.offerTitle,
  });
  final String image, name, subtitle, offerTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          spacing: 15,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                border: BoxBorder.all(color: Colors.grey.shade400),
              ),
              child: ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(12),
                child: Image.network(
                  image,
                  loadingBuilder: (context, child, loadingProgress) {
                    return loadingProgress == null
                        ? child
                        : const CircularProgressIndicator(color: Colors.blue);
                  },
                  errorBuilder: (context, error, stackTrace) {
                    return const Placeholder(
                      child: Center(
                        child: Icon(Icons.error, color: Colors.red),
                      ),
                    );
                  },
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CommonText(
                    text: name,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  CommonText(
                    text: subtitle,
                    fontColor: Colors.grey.shade400,
                    fontSize: 16,
                  ),
                  Text(
                    offerTitle,
                    style: const TextStyle(color: Colors.green, fontSize: 14),
                    softWrap: true,
                    maxLines: 3,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
