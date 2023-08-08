import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, this.aspectRatio = 150 / 225, required this.imageUrl});
  final double aspectRatio;
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(17),
      child: AspectRatio(
        aspectRatio: aspectRatio,
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: imageUrl,
          errorWidget: (context, url, error) => const Icon(Icons.close),
        ),
      ),
    );
  }
}
