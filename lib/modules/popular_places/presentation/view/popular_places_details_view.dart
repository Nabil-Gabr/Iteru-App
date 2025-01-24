import 'package:flutter/material.dart';
import 'package:iteru_app/modules/home/domain/entites/popular_places_item_entity.dart';
import 'package:iteru_app/modules/popular_places/presentation/view/widgets/popular_places_details_view_body.dart';

class PopularPlacesDetailsView extends StatelessWidget {
  const PopularPlacesDetailsView({super.key, required this.popularPlacesItemEntity});
  final PopularPlacesItemEntity popularPlacesItemEntity;
  static const String routeName = 'PopularPlacesDetailsView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  PopularPlacesDetailsViewBody(popularPlacesItemEntity: popularPlacesItemEntity,),
    );
  }
}