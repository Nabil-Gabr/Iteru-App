import 'package:flutter/material.dart';
import 'package:iteru_app/modules/home/domain/entites/monument_item_entity.dart';
import 'package:iteru_app/modules/tourism_tybpes/presentation/views/widgest/monument_grid_view.dart';

class MonumentViewody extends StatelessWidget {
  const MonumentViewody({super.key, required this.monumentEntity});
  final List  <MonumentEntity> monumentEntity;
  @override
  Widget build(BuildContext context) {
    return  MonumentGridView(monumentEntity: monumentEntity,);
  }
}
