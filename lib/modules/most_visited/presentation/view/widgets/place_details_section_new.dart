import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iteru_app/core/utils/app_images.dart';
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
          TicketsWidget(mostVisitedItemEntity: mostVisitedItemEntity)
          
        ],
      ),
    );
  }
}



class TicketsWidget extends StatelessWidget {
  const TicketsWidget({
    super.key,
    required this.mostVisitedItemEntity,
  });

  final MostVisitedItemEntity mostVisitedItemEntity;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(children: [
          SvgPicture.asset(Assets.imagesIconTickets),
          const SizedBox(
            width: 8,
          ),
          const Text(
            'Tickets:',
            style: TextStyle(
                color: Color(0xffC7C7C7),
                fontSize: 16,
                fontWeight: FontWeight.w400),
          )
        ]),
        const SizedBox(
          height: 16,
        ),
        TicketPricingColumn(
          category: 'FOREIGNER:',
          priceAdult: mostVisitedItemEntity.foreignerPriceAdult!,
          priceStudent: mostVisitedItemEntity.foreignerPriceStudent!,
        ),
        const SizedBox(
          height: 16,
        ),
        TicketPricingColumn(
          category: 'EGYPTIANS::',
          priceAdult: mostVisitedItemEntity.egyptiansPriceAdult!,
          priceStudent: mostVisitedItemEntity.egyptiansPriceStudent!,
        ),
      ],
    );
  }
}



class TicketPricingColumn extends StatelessWidget {
  const TicketPricingColumn({
    super.key,
    required this.priceAdult,
    required this.category,
    required this.priceStudent,
  });
  final String priceAdult, priceStudent, category;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          category,
          style: const TextStyle(
              color: Color(0xffFF8400),
              fontSize: 16,
              fontWeight: FontWeight.w400),
        ),
        const SizedBox(
          height: 8,
        ),
        BulletPointRow(
          label: 'Adult',
          value: priceAdult,
        ),
        const SizedBox(
          height: 8,
        ),
        BulletPointRow(
          label: 'Student',
          value: priceStudent,
        ),
      ],
    );
  }
}


class BulletPointRow extends StatelessWidget {
  const BulletPointRow({
    super.key,
    required this.label,
    required this.value,
  });
  final String label, value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: LabeledValueRow(
          widget: Container(
            width: 6,
            height: 6,
            decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(6))),
          ),
          label: label,
          value: value),
    );
  }
}
