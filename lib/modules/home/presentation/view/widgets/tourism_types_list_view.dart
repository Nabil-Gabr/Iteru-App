import 'package:flutter/material.dart';
import 'package:iteru_app/core/utils/app_images.dart';
import 'package:iteru_app/modules/home/domain/entites/tourism_type_item_entity.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/tourism_type_list_view_item.dart';
import 'package:iteru_app/modules/tourism_tybpes/presentation/views/tourism_types_view.dart';

class TourismTypesListView extends StatelessWidget {
  const TourismTypesListView({
    super.key,
  });

  static const List<TourismTypeItemEntity> tourismTypeItemList = [
      TourismTypeItemEntity(
          title: 'Cultural Tourism', image: Assets.imagesImageTestMohamed),
      TourismTypeItemEntity(
          title: 'Religious tourism', image: Assets.imagesImageTestMohamed),
      TourismTypeItemEntity(title: 'Nature', image: Assets.imagesImageTestMohamed),
    ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: tourismTypeItemList.map((e) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(TourismTypesView.routeName);
            },
            child: Padding(
              padding: const EdgeInsetsDirectional.only(end: 16),
              child: SizedBox(
                 width: MediaQuery.sizeOf(context).width * .36,
                child: AspectRatio(
                  aspectRatio: 143 / 91,
                  child: TourismTypeListViewItem(
                    tourismTypeEntity: e,
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}