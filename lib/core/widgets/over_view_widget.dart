import 'package:flutter/material.dart';
import 'package:iteru_app/modules/home/domain/entites/museum_item_entity.dart';
import 'package:iteru_app/modules/museum/presentation/view/widgets/description_section.dart';
import 'package:iteru_app/modules/museum/presentation/view/widgets/our_insider_tips.dart';
import 'package:iteru_app/modules/museum/presentation/view/widgets/place_details_section.dart';

class OverViewWidget extends StatelessWidget {
  const OverViewWidget({
    super.key,
    required this.museumItemEntity,
  });
  final MuseumItemEntity museumItemEntity;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, left: 16, right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //1-Sction 1 refactor Done
          PlaceDetailsSection(
            museumItemEntity: museumItemEntity,
          ),
          const SizedBox(
            height: 16,
          ),
          //2-section 2 Refactor Done
          DescriptionSection(description: museumItemEntity.description),
          const SizedBox(
            height: 22,
          ),
          //2-section 3
          OurInsiderTips(ourInsiderTips: museumItemEntity.ourInsiderTips),
          //Rafactor

          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
