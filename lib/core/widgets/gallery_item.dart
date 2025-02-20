import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class GalleryItem extends StatelessWidget {
  const GalleryItem({
    super.key,
    required this.image,
  });
  final String image;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: CachedNetworkImage(
        fit: BoxFit.cover,
        imageUrl: image,
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }
}
