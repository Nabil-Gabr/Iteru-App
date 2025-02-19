import 'package:flutter/material.dart';
import 'package:iteru_app/modules/museum/presentation/view/widgets/bullet_point_row.dart';

class TicketPricingColumn extends StatelessWidget {
  const TicketPricingColumn({
    super.key,
    required this.category,
    required this.pricingMap,
  });

  final String category;
  final Map<String, String> pricingMap;

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
        // هنا يتم عرض كل القيم غير الفارغة فقط
        ...pricingMap.entries
            .where((entry) => entry.value.isNotEmpty)
            .map((entry) => Column(
                  children: [
                    BulletPointRow(
                      label: entry.key,
                      value: entry.value,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                  ],
                ))
            ,
      ],
    );
  }
}


