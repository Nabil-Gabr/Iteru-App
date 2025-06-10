import 'package:flutter/material.dart';
import 'package:iteru_app/modules/home/domain/entites/monument_item_entity.dart';
import 'package:iteru_app/modules/tourism_tybpes/presentation/views/widgest/tourism_grid_view.dart';

class TourismViewody extends StatelessWidget {
  const TourismViewody({super.key, required this.monumentEntity});
  final List  <MonumentEntity> monumentEntity;
  @override
  Widget build(BuildContext context) {
    return  TourismGridView(monumentEntity: monumentEntity,);
  }
}
