import 'package:flutter/material.dart';
import 'package:iteru_app/core/widgets/custom_background_container.dart';
import 'package:iteru_app/modules/museum/presentation/view/widgets/tip_card_list_view.dart';

class OurInsiderTips extends StatelessWidget {
  const OurInsiderTips({
    super.key,
    required this.ourInsiderTips,
  });

  final List<Map<String, String>> ourInsiderTips;

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
              fontSize: 16,
              fontWeight: FontWeight.w400),
        ),
        const SizedBox(
          height: 16,
        ),
        TipCardListView(
          ourInsiderTips: ourInsiderTips,
          itemCount: ourInsiderTips.length,
        ),
      ],
    ));
  }
}
