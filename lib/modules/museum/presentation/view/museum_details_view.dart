import 'package:flutter/material.dart';
import 'package:iteru_app/modules/home/domain/entites/museum_item_entity.dart';
import 'package:iteru_app/modules/museum/presentation/view/widgets/museum_details_view_body.dart';

class MuseumDetailsView extends StatelessWidget {
  const MuseumDetailsView({super.key, required this.museumItemEntity});
  final MuseumItemEntity museumItemEntity;
  static const String routeName = 'MuseumDetailsView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      //2:Body
      body: MuseumDetailsViewBody(
        museumItemEntity: museumItemEntity,
      ),
    );
  }
}
