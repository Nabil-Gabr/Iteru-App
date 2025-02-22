import 'package:flutter/material.dart';
import 'package:iteru_app/core/widgets/custom_background_container.dart';
import 'package:iteru_app/modules/home/domain/entites/most_visited_item_entity.dart';
import 'package:iteru_app/modules/museum/presentation/view/widgets/labeled_value_row.dart';
import 'package:iteru_app/modules/museum/presentation/view/widgets/opening_hours_row.dart';

class PlaceDetailsSectionNew extends StatelessWidget {
  const PlaceDetailsSectionNew({
    super.key,
    required this.mostVisitedItemEntity,
  });
  final MostVisitedItemEntity mostVisitedItemEntity;

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          //1-refactor Section Done
          LabeledValueRow(
            widget: const Icon(
              Icons.location_pin,
              color: Color(0xffFF8400),
            ),
            label: 'Location:  ',
            value: mostVisitedItemEntity.location,
          ),
          const SizedBox(
            height: 18,
          ),
          // //2-refactor Section Done
          OpeningHoursRow(
            openingTime: mostVisitedItemEntity.openingTime!,
            closingTime: mostVisitedItemEntity.closingTime!,
          ),
          const SizedBox(
            height: 18,
          ),
          //3-refactor Section Done
          
        ],
      ),
    );
  }
}
