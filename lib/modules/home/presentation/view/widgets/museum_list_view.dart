import 'package:flutter/material.dart';
import 'package:iteru_app/core/utils/app_images.dart';
import 'package:iteru_app/modules/home/domain/entites/museum_item_entity.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/museum_list_view_item.dart';

class MuseumListView extends StatelessWidget {
  const MuseumListView({
    super.key,
  });

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
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map((e) => Padding(
                  padding: const EdgeInsetsDirectional.only(end: 16),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width *
                        0.7, // 80% من عرض الشاشة
                    child: MuseumListViewItem(
                      museumItemEntity: e,
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
