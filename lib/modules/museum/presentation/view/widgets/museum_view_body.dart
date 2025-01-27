import 'package:flutter/material.dart';
import 'package:iteru_app/core/utils/app_images.dart';
import 'package:iteru_app/modules/home/domain/entites/museum_item_entity.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/museum_list_view_item.dart';

class MuseumViewBody extends StatelessWidget {
  const MuseumViewBody({super.key});

  static const List<MuseumItemEntity> items = [
    MuseumItemEntity(
      coverImage: Assets.imagesPyramids,
      title: 'The Egyptian museum in Cairo',
      location: 'Cairo, Egypt',
      price: '10',
      overViewText: 'OverView',
      illustrativeImages: [
        Assets.imagesImageTestMohamed,
        Assets.imagesImageTestMohamed,
        Assets.imagesImageTestMohamed,
        Assets.imagesImageTestMohamed,
        Assets.imagesImageTestMohamed,
      ],
    ),
    MuseumItemEntity(
      coverImage: Assets.imagesPyramids,
      title: 'The Egyptian museum in Cairo',
      location: 'Cairo, Egypt',
      price: '10',
      overViewText: 'OverView',
      illustrativeImages: [
        Assets.imagesImageTestMohamed,
        Assets.imagesImageTestMohamed,
        Assets.imagesImageTestMohamed,
        Assets.imagesImageTestMohamed,
        Assets.imagesImageTestMohamed,
      ],
    ),
    MuseumItemEntity(
      coverImage: Assets.imagesPyramids,
      title: 'The Egyptian museum in Cairo',
      location: 'Cairo, Egypt',
      price: '10',
      overViewText: 'OverView',
      illustrativeImages: [
        Assets.imagesImageTestMohamed,
        Assets.imagesImageTestMohamed,
        Assets.imagesImageTestMohamed,
        Assets.imagesImageTestMohamed,
        Assets.imagesImageTestMohamed,
      ],
    ),
    MuseumItemEntity(
      coverImage: Assets.imagesPyramids,
      title: 'The Egyptian museum in Cairo',
      location: 'Cairo, Egypt',
      price: '40',
      overViewText: 'OverView',
      illustrativeImages: [
        Assets.imagesPyramids,
        Assets.imagesPyramids,
        Assets.imagesPyramids,
        Assets.imagesPyramids,
        Assets.imagesPyramids,
      ],
    ),
    MuseumItemEntity(
      coverImage: Assets.imagesPyramids,
      title: 'The Egyptian museum in Cairo',
      location: 'Cairo, Egypt',
      price: '10',
      overViewText: 'OverView',
      illustrativeImages: [
        Assets.imagesImageTestMohamed,
        Assets.imagesImageTestMohamed,
        Assets.imagesImageTestMohamed,
        Assets.imagesImageTestMohamed,
        Assets.imagesImageTestMohamed,
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Padding(
              padding: const EdgeInsetsDirectional.only(bottom: 24),
              child: SizedBox(
                  height: 106,
                  child: MuseumListViewItem(museumItemEntity: items[index])));
        },
      ),
    );
  }
}
