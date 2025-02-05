import 'package:flutter/material.dart';
import 'package:iteru_app/core/widgets/rating_widget.dart';
import 'package:iteru_app/core/widgets/gallery_widget.dart';
import 'package:iteru_app/core/widgets/naivgation_button.dart';
import 'package:iteru_app/core/widgets/over_view_widget.dart';
import 'package:iteru_app/modules/home/domain/entites/museum_item_entity.dart';

class ScreenDetailsAction extends StatefulWidget {
  const ScreenDetailsAction({
    super.key,
    required this.museumItemEntity,
  });
  final MuseumItemEntity museumItemEntity;

  @override
  State<ScreenDetailsAction> createState() => _ScreenDetailsActionState();
}

class _ScreenDetailsActionState extends State<ScreenDetailsAction> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    List item = [
      'Overview',
      'Gallery',
      'Rating',
    ];
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: item.asMap().entries.map((e) {
              var index = e.key;

              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: NaivgationButton(
                  isSelected: selectedIndex == index,
                  text: item[index],
                ),
              );
            }).toList(),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        selectedIndex == 0
            ? OverViewWidget(
                museumItemEntity: widget.museumItemEntity,
              )
            : selectedIndex == 1
                ? GalleryWidget(
                    imageGalleryItems:
                        widget.museumItemEntity.illustrativeImages,
                    itemCount:
                        widget.museumItemEntity.illustrativeImages.length,
                  )
                : const RatingWidget(),
      ],
    );
  }
}
