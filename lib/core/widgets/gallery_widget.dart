import 'package:flutter/material.dart';
import 'package:iteru_app/core/utils/app_images.dart';
import 'package:iteru_app/core/widgets/gallery_item.dart';
import 'package:iteru_app/core/widgets/masonry_grid_view_widget.dart';

class GalleryWidget extends StatelessWidget {
  const GalleryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: MasonryGridViewWidget(
          
          item: 10,
          itemBuilder: (context, index) {
            return (index % 2 == 0)
                ? const SizedBox(
                    child: AspectRatio(
                        aspectRatio: 172 / 202,
                        child:
                            GalleryItem(image: Assets.imagesImageTestMohamed)))
                : const SizedBox(
                    child: AspectRatio(
                        aspectRatio: 172 / 252,
                        child:
                            GalleryItem(image: Assets.imagesImageTestMohamed)));
          },
        ));
  }
}
