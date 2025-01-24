import 'package:flutter/material.dart';
import 'package:iteru_app/core/utils/app_images.dart';
import 'package:iteru_app/modules/home/domain/entites/popular_places_item_entity.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/popular_places_list_view_item.dart';

class PopularPlacesListViewScreen extends StatelessWidget {
  const PopularPlacesListViewScreen({super.key});

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
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Padding(
            padding: const EdgeInsetsDirectional.only(bottom: 24),
            child: PopularPlacesListViewItem(popularPlacesItemEntity: items[index]));
      },
    );
  }
}