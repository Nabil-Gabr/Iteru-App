import 'package:flutter/material.dart';
import 'package:iteru_app/generated/l10n.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/header_section.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/most_visited_list_view.dart';
import 'package:iteru_app/modules/most_visited/presentation/view/most_visited_view.dart';

class MostVisitedSection extends StatelessWidget {
  const MostVisitedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeaderSection(
          title: S.of(context).most_visited,
          
          onTap: () {
            Navigator.of(context).pushNamed(MostVisitedView.routeName);
          },
        ),
        const SizedBox(
          height: 16,
        ),
        const MostVisitedListView(),
      ],
    );
  }
}
