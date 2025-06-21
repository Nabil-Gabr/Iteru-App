import 'package:flutter/material.dart';
import 'package:iteru_app/modules/home/domain/entites/monument_item_entity.dart';
import 'package:iteru_app/modules/tourism_tybpes/presentation/views/widgest/monument__details_view_body.dart';

class MonumentDetailsView extends StatelessWidget {
  const MonumentDetailsView({super.key, required this.monumentEntity,});
  final MonumentEntity monumentEntity;

  static const String routeName='TourismTypesDetailsView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MonumentDetailsViewBody(monumentEntity: monumentEntity,),
    );
  }
}