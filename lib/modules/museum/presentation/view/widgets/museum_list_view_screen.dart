import 'package:flutter/material.dart';
import 'package:iteru_app/core/utils/app_images.dart';
import 'package:iteru_app/modules/home/domain/entites/museum_item_entity.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/museum_list_view_item.dart';

class MuseumListViewScreen extends StatelessWidget {
  const MuseumListViewScreen({super.key});

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
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Padding(
            padding: const EdgeInsetsDirectional.only(bottom: 24),
            child: SizedBox(
                height: 106,
                child: MuseumListViewItem(museumItemEntity: items[index])));
      },
    );
  }
}
