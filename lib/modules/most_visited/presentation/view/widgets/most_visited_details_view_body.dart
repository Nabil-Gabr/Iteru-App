import 'package:flutter/material.dart';
import 'package:iteru_app/core/widgets/image_details_widget.dart';
import 'package:iteru_app/modules/home/domain/entites/most_visited_item_entity.dart';
import 'package:iteru_app/modules/most_visited/presentation/view/widgets/over_view.dart';

class MostVisitedDetailsViewBody extends StatelessWidget {
  const MostVisitedDetailsViewBody(
      {super.key, required this.mostVisitedItemEntity});
  final MostVisitedItemEntity mostVisitedItemEntity;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              //1:Image
              ImageDetailsWidget(
                image: mostVisitedItemEntity.coverImage,
                title: mostVisitedItemEntity.name,
              ),
              //2:SizedBox 16
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
        //3:ScreenDetailsAction
        SliverToBoxAdapter(
          child: OverView(mostVisitedItemEntity: mostVisitedItemEntity),
        )
      ],
    );
  }
}
