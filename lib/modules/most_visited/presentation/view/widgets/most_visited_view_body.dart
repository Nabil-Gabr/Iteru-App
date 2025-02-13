import 'package:flutter/material.dart';
import 'package:iteru_app/core/datasource/static.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/most_visited_item.dart';

class MostVisitedViewBody extends StatelessWidget {
  const MostVisitedViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: mostVisitedItemEntity.length,
      itemBuilder: (context, index) {
        return Padding(
            padding: const EdgeInsetsDirectional.only(bottom: 24),
            child: MostVisitedItem(
                mostVisitedItemEntity: mostVisitedItemEntity[index]));
      },
    );
  }
}
