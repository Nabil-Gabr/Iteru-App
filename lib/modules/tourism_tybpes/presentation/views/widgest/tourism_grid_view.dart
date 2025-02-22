import 'package:flutter/material.dart';
import 'package:iteru_app/core/utils/app_images.dart';
import 'package:iteru_app/core/widgets/masonry_grid_view_widget.dart';
import 'package:iteru_app/modules/home/domain/entites/tourism_type_item_entity.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/tourism_type_list_view_item.dart';

class TourismGridView extends StatelessWidget {
  const TourismGridView({
    super.key,
  });

  static const List<TourismTypeItemEntity> tourismTypeItemList = [
    TourismTypeItemEntity(
        title: 'Religious tourism', image: Assets.imagesReligiousTourism),
    TourismTypeItemEntity(
        title: 'Recreational tourism', image: Assets.imagesRecreationalTourism),
    TourismTypeItemEntity(
        title: 'Cultural Tourism', image: Assets.imagesCulturalTourism),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: MasonryGridViewWidget(
          item: tourismTypeItemList.length,
          itemBuilder: (context, index) {
        return (index % 2 == 0)
            ? SizedBox(
                child: AspectRatio(
                    aspectRatio: 172 / 202,
                    child: TourismTypeListViewItem(
                        tourismTypeEntity: tourismTypeItemList[index])))
            : SizedBox(
                child: AspectRatio(
                aspectRatio: 172 / 252,
                child: TourismTypeListViewItem(
                    tourismTypeEntity: tourismTypeItemList[index]),
              ));
      },
          ));
  }
}
