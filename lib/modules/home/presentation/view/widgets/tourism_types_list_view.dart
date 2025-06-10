import 'package:flutter/material.dart';
import 'package:iteru_app/modules/home/domain/entites/monument_item_entity.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/tourism_type_list_view_item.dart';

class TourismTypesListView extends StatelessWidget {
  const TourismTypesListView({
    super.key, required this.monumentEntity, 
  });

  final List<MonumentEntity> monumentEntity;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: monumentEntity.map((e) {
          return Padding(
            padding: const EdgeInsetsDirectional.only(end: 16),
            child: SizedBox(
              width: MediaQuery.sizeOf(context).width * .36,
              child: AspectRatio(
                aspectRatio: 143 / 91,
                child: TourismTypeListViewItem(
                  monumentEntity: e,
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
