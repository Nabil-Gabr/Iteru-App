import 'package:flutter/material.dart';
import 'package:iteru_app/core/widgets/masonry_grid_view_widget.dart';
import 'package:iteru_app/modules/home/domain/entites/monument_item_entity.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/tourism_type_list_view_item.dart';

class TourismGridView extends StatelessWidget {
  const TourismGridView({
    super.key, 
    required this.monumentEntity,
  });
final List  <MonumentEntity> monumentEntity;
  

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: MasonryGridViewWidget(
            
            item: monumentEntity.length,
            itemBuilder: (context, index) {
          return (index % 2 == 0)
              ? SizedBox(
                  child: AspectRatio(
                      aspectRatio: 172 / 202,
                      child: MonumentsListViewItem(
                          monumentEntity: monumentEntity[index])))
              : SizedBox(
                  child: AspectRatio(
                  aspectRatio: 172 / 252,
                  child: MonumentsListViewItem(
                      monumentEntity: monumentEntity[index]),
                ));
                },
            ),
        ));
  }
}
