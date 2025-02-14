import 'package:flutter/material.dart';
import 'package:iteru_app/generated/l10n.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/header_section.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/popular_places_list_view.dart';
import 'package:iteru_app/modules/popular_places/presentation/view/popular_places_view.dart';

class PopularPlacesSection extends StatelessWidget {
  const PopularPlacesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeaderSection(
          title: S.of(context).popular_places,
          
          onTap: () {
            Navigator.of(context).pushNamed(PopularPlacesView.routeName);
          },
        ),
        const SizedBox(
          height: 16,
        ),
        const PopularPlacesListView(),
      ],
    );
  }
}
