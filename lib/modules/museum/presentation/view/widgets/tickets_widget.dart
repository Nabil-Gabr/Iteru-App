import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iteru_app/core/utils/app_images.dart';
import 'package:iteru_app/modules/home/domain/entites/museum_item_entity.dart';
import 'package:iteru_app/modules/museum/presentation/view/widgets/ticket_pricing_column.dart';

class TicketsWidget extends StatelessWidget {
  const TicketsWidget({
    super.key,
    required this.museumItemEntity,
  });

  final MuseumItemEntity museumItemEntity;

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
          priceAdult: museumItemEntity.foreignerPriceAdult,
          priceStudent: museumItemEntity.foreignerPriceStudent,
        ),
        const SizedBox(
          height: 16,
        ),
        TicketPricingColumn(
          category: 'EGYPTIANS::',
          priceAdult: museumItemEntity.egyptiansPriceAdult,
          priceStudent: museumItemEntity.egyptiansPriceStudent,
        ),
      ],
    );
  }
}
