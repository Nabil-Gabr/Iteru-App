import 'package:flutter/material.dart';
import 'package:iteru_app/modules/home/domain/entites/most_visited_item_entity.dart';
import 'package:iteru_app/modules/most_visited/presentation/view/widgets/place_details_section_new.dart';
import 'package:iteru_app/modules/museum/presentation/view/widgets/description_section.dart';

class OverView extends StatelessWidget {
  const OverView({
    super.key,
    required this.mostVisitedItemEntity,
  });
  final MostVisitedItemEntity mostVisitedItemEntity;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, left: 16, right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //1-Sction 1 refactor Done
          PlaceDetailsSectionNew(
            mostVisitedItemEntity: mostVisitedItemEntity,
          ),
          const SizedBox(
            height: 16,
          ),
          //2-section 2 Refactor Done
          DescriptionSection(description: mostVisitedItemEntity.description),
          const SizedBox(
            height: 22,
          ),
          //2-section 3
          // const OurInsiderTips(ourInsiderTips: [
          //   {'title': ' Ramadan Visit Hours', 'subTitle': '09:00am – 04:00pm'},
          //   {
          //     'title': ' Last Ticket',
          //     'subTitle': 'The tickets window closes at 3:00 PM'
          //   },
          //   {
          //     'title': ' Free entry policy',
          //     'subTitle': 'Egyptians and Arabs seniors aged 60 and over'
          //   },
          // ]),
          // // //Rafactor

          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
