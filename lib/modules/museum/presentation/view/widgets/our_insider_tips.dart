import 'package:flutter/material.dart';
import 'package:iteru_app/core/widgets/custom_background_container.dart';
import 'package:iteru_app/modules/museum/presentation/view/widgets/tip_card_list_view.dart';

class OurInsiderTips extends StatelessWidget {
  const OurInsiderTips({
    super.key,
    required this.ourInsiderTips,
  });

  final List<Map<String, String>> ourInsiderTips;

  static const List<Map<String, String>> ourInsider = [
    
    {
      'title': 'Last Ticket',
      'subTitle': 'The tickets window closes at 3:00 PMm',
    },

    {
      'title': 'Ramadan Visit Hours:',
      'subTitle': '09:00am – 04:00pm',
    },
    {
      'title': 'Free entry policy',
      'subTitle': '''1. Egyptians and Arabs seniors aged 60 and over.
	2- Egyptians and Arabs special needs.
	3- Orphaned children.
	4- Public schools trips primary and preparatory school.
	5- children below 6 years''',
    },
    
  ];

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Our Insider Tips',
          style: TextStyle(
              color: Color(0xffFF8400),
              fontSize: 20,
              fontWeight: FontWeight.w600),
        ),
        
        TipCardListView(
          // ourInsiderTips: ourInsiderTips,
          // itemCount: ourInsiderTips.length,
          ourInsiderTips: ourInsider,
          itemCount: ourInsider.length,
        ),
      ],
    ));
  }
}
