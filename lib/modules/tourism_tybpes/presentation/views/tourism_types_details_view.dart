import 'package:flutter/material.dart';
import 'package:iteru_app/modules/home/domain/entites/tourism_type_item_entity.dart';
import 'package:iteru_app/modules/tourism_tybpes/presentation/views/widgest/tourism_types__details_view_body.dart';

class TourismTypesDetailsView extends StatelessWidget {
  const TourismTypesDetailsView({super.key, required this.tourismTypeItemEntity});
  final TourismTypeItemEntity tourismTypeItemEntity;

  static const String routeName='TourismTypesDetailsView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: TourismTypesDetailsViewBody(tourismTypeItemEntity: tourismTypeItemEntity,),
    );
  }
}