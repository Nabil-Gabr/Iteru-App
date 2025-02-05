import 'package:flutter/material.dart';
import 'package:iteru_app/modules/museum/presentation/view/widgets/tip_card.dart';

class TipCardListView extends StatelessWidget {
  const TipCardListView({super.key, required this.ourInsiderTips, required this.itemCount});
  final List<Map<String, String>> ourInsiderTips;
  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: itemCount,
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TipCard(
              index: index,
              title: ourInsiderTips[index]['title']!,
              subTitle: ourInsiderTips[index]['subTitle']!,
            ),
            if (index != itemCount - 1) const SizedBox(height: 16),
          ],
        );
      },
    );
  }
}