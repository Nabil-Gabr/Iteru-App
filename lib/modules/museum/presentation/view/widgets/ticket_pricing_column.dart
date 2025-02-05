import 'package:flutter/material.dart';
import 'package:iteru_app/modules/museum/presentation/view/widgets/bullet_point_row.dart';

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
