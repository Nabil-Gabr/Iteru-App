import 'package:flutter/material.dart';
import 'package:iteru_app/modules/home/domain/entites/most_visited_item_entity.dart';
import 'package:iteru_app/modules/most_visited/presentation/view/widgets/most_visited_details_view_body.dart';

class MostVisitedDetailsView extends StatelessWidget {
  const MostVisitedDetailsView(
      {super.key, required this.mostVisitedItemEntity});
  final MostVisitedItemEntity mostVisitedItemEntity;
  static const String routeName = 'MostVisitedDetailsView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MostVisitedDetailsViewBody(
          mostVisitedItemEntity: mostVisitedItemEntity),
    );
  }
}
