import 'package:flutter/material.dart';
import 'package:iteru_app/core/utils/app_images.dart';
import 'package:iteru_app/modules/home/domain/entites/popular_places_item_entity.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/popular_places_list_view_item.dart';

class PopularPlacesListView extends StatelessWidget {
  const PopularPlacesListView({super.key});

  static const List<PopularPlacesItemEntity> items = [
    PopularPlacesItemEntity(
        image: Assets.imagesPyramids,
        title: 'Mohammed Ali Mos',
        location: 'Cairo, Egypt',
        rating: '4.5'),
    PopularPlacesItemEntity(
        image: Assets.imagesPyramids,
        title: 'Mohammed Ali Mos',
        location: 'Cairo, Egypt',
        rating: '4.2'),
    PopularPlacesItemEntity(
        image: Assets.imagesPyramids,
        title: 'Mohammed Ali Mos',
        location: 'Cairo, Egypt',
        rating: '4.8'),
    PopularPlacesItemEntity(
        image: Assets.imagesPyramids,
        title: 'Mohammed Ali Mos',
        location: 'Cairo, Egypt',
        rating: '3.5'),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items.map(
          (e) {
            return Padding(
              padding: const EdgeInsetsDirectional.only(end: 16),
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width * .679,
                child: PopularPlacesListViewItem(
                  popularPlacesItemEntity: e,
                ),
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}
