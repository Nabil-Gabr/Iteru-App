import 'package:flutter/material.dart';
import 'package:iteru_app/modules/home/domain/entites/tourism_type_item_entity.dart';

class TourismTypesDetailsViewBody extends StatelessWidget {
  const TourismTypesDetailsViewBody({super.key, required this.tourismTypeItemEntity});
  final TourismTypeItemEntity tourismTypeItemEntity;

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('TourismTypesDetailsViewBody'),);
  }
}