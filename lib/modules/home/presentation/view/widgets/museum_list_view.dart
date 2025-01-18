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
        children: items
            .map((e) => GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsetsDirectional.only(end: 16),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width *
                          0.7, // 80% من عرض الشاشة
                      child: MuseumListViewItem(
                        museumItemEntity: e,
                      ),
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
