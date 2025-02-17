import 'package:flutter/material.dart';
import 'package:iteru_app/modules/home/domain/entites/museum_item_entity.dart';
import 'package:iteru_app/modules/museum/presentation/view/widgets/museum_view_body_list_view.dart';

class MuseumViewBody extends StatelessWidget {
  const MuseumViewBody({super.key, required this.museumItemEntity});
final List  <MuseumItemEntity> museumItemEntity;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: MuseumViewBodyListView(museumItemEntity: museumItemEntity,),
    );
  }
}
