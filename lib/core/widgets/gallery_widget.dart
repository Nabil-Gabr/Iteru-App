import 'package:flutter/material.dart';
import 'package:iteru_app/core/widgets/gallery_item.dart';
import 'package:iteru_app/core/widgets/masonry_grid_view_widget.dart';

class GalleryWidget extends StatelessWidget {
  const GalleryWidget({
    super.key,
    required this.imageGalleryItems,
    required this.itemCount,
  });
  final List<String> imageGalleryItems;
  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: MasonryGridViewWidget(
          item: itemCount,
          itemBuilder: (context, index) {
            return (index % 2 == 0)
                ? SizedBox(
                    child: AspectRatio(
                        aspectRatio: 172 / 202,
                        child: GalleryItem(image: imageGalleryItems[index])))
                : SizedBox(
                    child: AspectRatio(
                        aspectRatio: 172 / 252,
                        child: GalleryItem(image: imageGalleryItems[index])));
          },
        ));
  }
}
