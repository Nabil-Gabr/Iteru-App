import 'package:flutter/material.dart';
import 'package:iteru_app/modules/home/domain/entites/popular_places_item_entity.dart';

class PopularPlacesDetailsViewBody extends StatelessWidget {
  const PopularPlacesDetailsViewBody({super.key, required this.popularPlacesItemEntity});
  final PopularPlacesItemEntity popularPlacesItemEntity;

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('PopularPlacesDetailsViewBody'),);
  }
}