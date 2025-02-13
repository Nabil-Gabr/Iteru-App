import 'package:flutter/material.dart';
import 'package:iteru_app/core/datasource/static.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/most_visited_item.dart';

class MostVisitedListView extends StatelessWidget {
  const MostVisitedListView({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: mostVisitedItemEntity.take(3).map(
          (e) {
            return Padding(
              padding: const EdgeInsetsDirectional.only(end: 16),
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width * .679,
                child: MostVisitedItem(
                  mostVisitedItemEntity: e,
                ),
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}
