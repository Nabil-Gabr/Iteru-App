import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iteru_app/core/utils/app_images.dart';
import 'package:iteru_app/modules/museum/presentation/view/widgets/ticket_pricing_column.dart';

class TicketsWidget extends StatelessWidget {
  const TicketsWidget({
    super.key,
    required this.museumItemEntity,
  });

  final dynamic museumItemEntity;

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
          pricingMap: {
            'Adult': museumItemEntity.foreignerPriceAdult,
            'Student': museumItemEntity.foreignerPriceStudent,
            'Child': museumItemEntity.foreignersPrice, // مثال
          },
        ),
        const SizedBox(
          height: 16,
        ),
        TicketPricingColumn(
          category: 'EGYPTIANS:',
          pricingMap: {
            'Adult': museumItemEntity.egyptiansPriceAdult,
            'Student': museumItemEntity.egyptiansPriceStudent,
            'Arabs': museumItemEntity.egyptianArabsPrice, // مثال
          },
        ),
      ],
    );
  }
}
