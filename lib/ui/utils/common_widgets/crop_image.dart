import 'package:flutter/material.dart';

class CropImage extends StatelessWidget {
  const CropImage({super.key, required this.imagePath,
    this.height, this.width, this.fit
  });
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
          return const Placeholder(child: Center(child: Icon(Icons.error, color: Colors.red,)));
        },
        loadingBuilder: (context, child, loadingProgress) {
          return loadingProgress == null ? child : const CircularProgressIndicator(color: Colors.blue,);
        },
        width: width ?? 400,
        height: height ?? 200,
        fit: fit ?? BoxFit.fill,
      ),
    );
  }
}
