import 'package:flutter/material.dart';
import 'package:iteru_app/core/utils/app_images.dart';
import 'package:iteru_app/modules/home/domain/entites/museum_item_entity.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/popular_places_list_view_item.dart';
import 'package:iteru_app/modules/popular_places/presentation/view/popular_places_view.dart';

class PopularPlacesListView extends StatelessWidget {
  const PopularPlacesListView({super.key});

  static const List<MuseumItemEntity> items = [
    MuseumItemEntity(
        image: Assets.imagesPyramids,
        title: 'The Egyptian museum in Cairo',
        location: 'Cairo, Egypt'),
    MuseumItemEntity(
        image: Assets.imagesPyramids,
        title: 'The Egyptian museum in Cairo22',
        location: 'Cairo, Egypt22'),
    MuseumItemEntity(
        image: Assets.imagesPyramids,
        title: 'The Egyptian museum in Cairo ',
        location: 'Cairo, Egypt33'),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items.map(
          (e) {
            return GestureDetector(
              onTap: () {
                    Navigator.of(context).pushNamed(PopularPlacesView.routeName);
                  },
              child: Padding(
                padding: const EdgeInsetsDirectional.only(end: 16),
                child: SizedBox(
                  width: MediaQuery.sizeOf(context).width * .679,
                  child: PopularPlacesListViewItem(
                    museumItemEntity: e,
                  ),
                ),
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}
