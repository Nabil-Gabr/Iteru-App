import 'package:flutter/material.dart';
import 'package:iteru_app/core/widgets/museum_list_view_item.dart';
import 'package:iteru_app/modules/home/domain/entites/museum_item_entity.dart';

class MuseumViewBodyListView extends StatelessWidget {
  const MuseumViewBodyListView({
    super.key, required this.museumItemEntity,
  });

  final List  <MuseumItemEntity> museumItemEntity;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: museumItemEntity.length,
      itemBuilder: (context, index) {
        return Padding(
            padding: const EdgeInsetsDirectional.only(bottom: 24),
            child: SizedBox(
                height: 106,
                child: MuseumListViewItem(museumItemEntity: museumItemEntity[index])));
      },
    );
  }
}
